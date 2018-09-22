ALTER SESSION SET NLS_TIMESTAMP_FORMAT = "DD/MM/YYYY HH24:MI:SS.FF";

CREATE TABLE Coach (CoachID varchar2(255), 
                    Name varchar2(255), 
                    CONSTRAINT Coach_PK PRIMARY KEY (CoachID)
                   );
                   
CREATE TABLE Team (Team_Name varchar2(255), 
                   CoachID varchar2(255) UNIQUE, 
                   Country varchar2(255), 
                   Ranking NUMBER(*), 
                   CONSTRAINT Team_PK PRIMARY KEY (Team_Name), 
                   CONSTRAINT Team_FK FOREIGN KEY (CoachID) REFERENCES Coach(CoachID), 
                   CONSTRAINT Team_Ranking CHECK (RANKING>0)
                  );

                  
CREATE TABLE Players (UserID varchar2(255), 
                      Ranking NUMBER(*), 
                      KDR NUMBER DEFAULT 0, 
                      Team_Name varchar2(255), 
                      CONSTRAINT Players_PK PRIMARY KEY (UserID), 
                      CONSTRAINT Players_FK FOREIGN KEY (Team_Name) REFERENCES Team(Team_Name), 
                      CONSTRAINT Player_KDR CHECK (KDR>=0), 
                      CONSTRAINT Player_Ranking CHECK (Ranking>0)
                     );
                     
CREATE TABLE Cellphones (CoachID varchar2(255), 
                         Cel_number varchar2(255), 
                         CONSTRAINT Cellphones_PK PRIMARY KEY (CoachID, Cel_Number), 
                         CONSTRAINT Cellphones_FK FOREIGN KEY (CoachID) references Coach(CoachID)
                        );
                        
CREATE TABLE Prizes (PrizeID varchar2(255), 
                     Type varchar2(255), 
                     Price NUMBER(*, 2), 
                     CONSTRAINT Prizes_PK PRIMARY KEY (PrizeID), 
                     CONSTRAINT Prizes_Price CHECK (Price>0)
                    );
                    
CREATE TABLE Championships (ChampID varchar2(255), 
                            Data timestamp, 
                           	City varchar2(255), 
                           	Country varchar2(255), 
                            CONSTRAINT Championships_PK PRIMARY KEY (ChampID)
                           );

CREATE TABLE Itens (UserID varchar2(255), 
                    Ordem NUMBER(*), 
                    Name varchar2(255), 
                    Market_Price NUMBER(*, 2), 
                    CONSTRAINT Itens_PK PRIMARY KEY (UserID, Ordem), 
                    CONSTRAINT Itens_FK FOREIGN KEY (UserID) references Players(UserID), 
                    CONSTRAINT Itens_Ordem CHECK (Ordem>=0), 
                    CONSTRAINT Itens_Market_Price CHECK (Market_Price>=0)
                    );
                    
CREATE TABLE CT (UserID varchar2(255), 
                 Defuses NUMBER(*), 
                 CONSTRAINT CT_PK PRIMARY KEY (UserID), 
                 CONSTRAINT CT_FK FOREIGN KEY (UserID) REFERENCES Players(UserID), 
                 CONSTRAINT CT_Defuses CHECK (Defuses>0)
                );
                
CREATE TABLE TR (UserID varchar2(255), 
                 Explosions NUMBER(*), 
                 CONSTRAINT TR_PK PRIMARY KEY (UserID), 
                 CONSTRAINT TR_FK FOREIGN KEY (UserID) REFERENCES Players(UserID), 
                 CONSTRAINT TR_Explosions CHECK (Explosions>0)
                );

CREATE TABLE Kill (Player1 varchar2(255), 
                   Player2 varchar2(255), 
                   date_time timestamp, 
                   PlayerItem varchar2(255), 
                   PlayerItemOrder NUMBER(*), 
                   CT_Killed NUMBER(*) NOT NULL, 
                   CONSTRAINT Kill_PK PRIMARY KEY (Player1, Player2, date_time), 
                   CONSTRAINT Kill_Player1_FK FOREIGN KEY (Player1) REFERENCES CT(UserID), 
                   CONSTRAINT Kill_Player2_FK FOREIGN KEY (Player2) REFERENCES TR(UserID), 
                   CONSTRAINT Kill_Item_FK FOREIGN KEY (PlayerItem, PlayerItemOrder) REFERENCES Itens(UserID, Ordem), 
                   CONSTRAINT Kill_PlayerItemOrder CHECK (PlayerItemOrder>=0), 
                   CONSTRAINT Kill_CT_Killed CHECK (CT_Killed IN (0, 1)), 
				   CONSTRAINT Kill_Valid_FK CHECK ((PlayerItem IS NULL AND PlayerItemOrder IS NULL) OR (PlayerItem IS NOT NULL AND PlayerItemOrder IS NOT NULL))
				   --garante que se PlayerItem for especificado PlayerItemOrder também deve ser. Ou ambos são NULL ou os 2 são especificados.
                   );

CREATE TABLE Win (Team_Name varchar2(255), 
                  PrizeID varchar2(255), 
                  ChampID varchar2(255), 
                  CONSTRAINT Win_PK PRIMARY KEY (Team_Name, PrizeID, ChampID), 
                  CONSTRAINT Win_Team_PK FOREIGN KEY (Team_Name) REFERENCES Team(Team_Name), 
                  CONSTRAINT Win_Prizes_PK FOREIGN KEY (PrizeID) REFERENCES Prizes(PrizeID), 
                  CONSTRAINT Win_Championships_PK FOREIGN KEY (ChampID) REFERENCES Championships(ChampID)
                 );
                 
CREATE TABLE Send_Message(Sender varchar2(255), 
                          Receiver varchar2(255), 
                          date_time timestamp, 
                          Content varchar2(4000), 
                          CONSTRAINT Send_Mensage_PK PRIMARY KEY (Sender, Receiver, date_time), 
                          CONSTRAINT Send_Mensage_Sender_FK FOREIGN KEY (Sender) REFERENCES Players(UserID), 
                          CONSTRAINT Send_Mensage_Receiver_FK FOREIGN KEY (Receiver) REFERENCES Players(UserID)
                          );