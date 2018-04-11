insert into tecnicos(id,tecnico,auxiliar_tecnico) values (1,'Abel Braga','Leomir'),(2,'Cuca','Cuquinha');
insert into clubes(id,nome,sigla,escudo,tecnico) values (1,'Fluminense','FLU','http://s.glbimg.com//es/sde/f/organizacoes/2014/04/14/fluminense_30x30.png',1),(2,'Palmeiras','PAL','http://s.glbimg.com//es/sde/f/organizacoes/2014/04/14/palmeiras_30x30.png',2);
insert into estadios(id,nome) values (1,'Maracanã');
insert into rodadas(id,descricao) values(25,'RODADA 25');
insert into placares(id,dt_jogo,gol_mandante,gol_visitante,mandante_id,visitante_id,estadio_id,rodada_id) values (1,'2017-09-24',0,1,1,2,1,25);
insert into jogadores(id,nome,numero,posicao,cartoes_amarelo,cartoes_vermelho,gols,clube_id) 
			values 	(1,'Júlio César',22,'GOL',0,0,0,1),
					(2,'Lucas',2,'LAD',1,0,0,1),
                    (3,'Nogueira',44,'ZAD',1,0,0,1),
					(4,'Frazan',13,'ZAE',0,0,0,1),
					(5,'Léo',15,'LAE',0,0,0,1),
					(6,'Orejuela',18,'VOL',0,0,0,1),
					(7,'Wendel',37,'VOL',0,0,0,1),
					(8,'Douglas',8,'VOL',0,0,0,1),
                    (9,'Gustavo Escarpa',10,'MEC',0,0,0,1),
                    (10,'Robinho',17,'MEC',0,0,0,1),
                    (11,'Henrrique Dourado',9,'ATA',0,0,0,1),
					(12,'Diego Cavalieri',12,'GOL',0,0,0,1),
					(13,'Matheus Phillipe',34,'GOL',0,0,0,1),
					(14,'Reginaldo',40,'ZAD',0,0,0,1),
					(15,'Marlon',6,'LAE',0,0,0,1),
					(16,'Richard',25,'VOL',0,0,0,1),
					(17,'Mateus Norton',26,'VOL',0,0,0,1),
					(18,'Marlon Freitas',23,'VOL',0,0,0,1),
					(19,'Sornoza',20,'MEC',0,0,0,1),
					(20,'Wellington Silva',11,'ATA',0,0,0,1),
					(21,'Marcos Junior',35,'ATA',0,0,0,1),
					(22,'Peu',27,'ATA',0,0,0,1),
					(23,'Pedro',32,'ATA',0,0,0,1),
					(24,'Fernando Prass',1,'GOL',0,0,0,2),
					(25,'Mayke',12,'LAD',0,0,0,2),
					(26,'Edu Dracena',3,'ZAD',1,0,0,2),
					(27,'Juninho',4,'ZAE',0,0,0,2),
					(28,'Egídio',6,'LAE',1,0,1,2),
					(29,'Jean',2,'VOL',0,0,0,2),
					(30,'Tchê Tchê',8,'VOL',0,0,0,2),
					(31,'Moisés',10,'MEC',0,0,0,2),
					(32,'DUDU',7,'ATA',0,0,0,2),
					(33,'Deyverson',16,'ATA',0,0,0,2),
					(34,'Willian',29,'ATA',0,0,0,2),
					(35,'Vinicius Silvestre',42,'GOL',0,0,0,2),
					(36,'Luan',13,'ZAD',0,0,0,2),
					(37,'Zé Roberto',11,'LAE',0,0,0,2),
					(38,'Bruno Henrrique',19,'VOL',0,0,0,2),
					(39,'Thiago Santos',21,'VOL',0,0,0,2),
					(40,'Alejandro Guerra',18,'MEC',0,0,0,2),
					(41,'Hyoran',28,'MEC',0,0,0,2),
					(42,'Raphael Veiga',20,'MEC',0,0,0,2),
					(43,'Keno',27,'ATA',0,0,0,2),
					(44,'Erik',17,'ATA',0,0,0,2),
					(45,'Roger Guedes',23,'ATA',0,0,0,2),
					(46,'Borja',9,'ATA',0,0,0,2);      
                    


insert into arbitros(id,nome) 
			 values (1,'Anderson Daronco'),
					(2,'Rafael da Silva Alves'),
					(3,'Elio Nepomuceno de Andrade Junior');
insert into escalacoes(id,goleiro_id, zagueiro_direito_id,zagueiro_esquerdo_id, lateral_direito_id, lateral_esquerdo_id, volante_a_id, volante_b_id, meia_id, atacante_a_id, atacante_b_id, atacante_c_id) 
			   values (1,1,2,3,4,5,6,7,8,9,10,11),
					  (2,24,25,26,27,28,29,30,31,32,33,34);
insert into reservas(id,jogador_a_id,jogador_b_id,jogador_c_id,jogador_d_id,jogador_e_id,jogador_f_id,jogador_g_id,jogador_h_id,jogador_i_id,jogador_j_id,jogador_k_id,jogador_l_id)
			  values(1,12,13,14,15,16,17,18,19,20,21,22,23),
					(2,35,36,37,38,39,40,41,42,43,44,45,46);
insert into jogos(id,rodada_id,estadio_id,time_mandante_id,time_visitante_id,placar_id,arbitro_id,primeiro_arbitro_auxiliar_id,segundo_arbitro_auxiliar_id,escalacao_mandante_id,escalacao_reservas_mandante_id,escalacao_visitante_id,escalacao_reservas_visitante_id)
		   values(1,25,1,1,2,1,1,2,3,1,1,2,2);