create database ge_db;
use ge_db;


create table tecnicos(
			id bigint primary key auto_increment,
			tecnico varchar(255),
			auxiliar_tecnico varchar(255)
			);


create table clubes(
			id bigint primary key auto_increment,
			nome varchar(100) not null unique,
			sigla varchar(5) not null unique,
			escudo varchar(200)
			);
			


alter table clubes add column tecnico_id bigint;

alter table clubes add constraint tecnico_id_fk foreign key(tecnico_id) 
references tecnicos(id);

alter table clubes add constraint tecnico_id_fk_u unique(tecnico_id);

alter table clubes modify tecnico_id bigint not null;


create table estadios(
			id bigint primary key auto_increment,
			nome varchar(100)
			);

create table rodadas(
			id bigint primary key auto_increment,
			descricao varchar(20)
			);

create table placares(
			id bigint primary key auto_increment,
			dt_jogo date,
			gol_mandante int,
			gol_visitante int
			);

alter table placares add column mandante_id bigint;

alter table placares add column visitante_id bigint;

alter table placares add column estadio_id bigint;

alter table placares add column rodada_id bigint;


alter table placares add constraint mandante_id_fk foreign key(mandante_id) references clubes(id);

alter table placares add constraint visitante_id_fk foreign key(visitante_id) references clubes(id);

alter table placares add constraint estadio_id_fk foreign key(estadio_id) references estadios(id);

alter table placares add constraint rodada_id_fk foreign key(rodada_id) references rodadas(id);


alter table placares modify mandante_id bigint not null;
alter table placares modify visitante_id bigint not null;

alter table placares modify estadio_id bigint not null;
alter table placares modify rodada_id bigint not null;



create table jogadores(
			id bigint primary key auto_increment,
			nome varchar(255),
			numero int,
			posicao varchar(255),
			cartoes_amarelo int,
			cartoes_vermelho int,
            gols int
			);

alter table jogadores add column clube_id bigint;

alter table jogadores add constraint clube_id_fk foreign key(clube_id) references clubes(id);

alter table jogadores modify clube_id bigint not null;

create table arbitros(
			id bigint primary key auto_increment,
			nome varchar(255)
			);

create table escalacoes(
			id bigint primary key auto_increment
			);

alter table escalacoes add column goleiro_id bigint;

alter table escalacoes add column zagueiro_direito_id bigint;

alter table escalacoes add column zagueiro_esquerdo_id bigint;

alter table escalacoes add column lateral_direito_id bigint;

alter table escalacoes add column lateral_esquerdo_id bigint;

alter table escalacoes add column volante_a_id bigint;

alter table escalacoes add column volante_b_id bigint;

alter table escalacoes add column meia_id bigint;

alter table escalacoes add column atacante_a_id bigint;

alter table escalacoes add column atacante_b_id bigint;

alter table escalacoes add column atacante_c_id bigint;

alter table escalacoes add constraint goleiro_id_fk foreign key(goleiro_id) references jogadores(id);

alter table escalacoes add constraint zagueiro_direito_id_fk foreign key(zagueiro_direito_id) references jogadores(id);

alter table escalacoes add constraint zagueiro_esquerdo_id_fk foreign key(zagueiro_esquerdo_id) references jogadores(id);

alter table escalacoes add constraint lateral_direito_id_fk foreign key(lateral_direito_id) references jogadores(id);

alter table escalacoes add constraint lateral_esquerdo_id_fk foreign key(lateral_esquerdo_id) references jogadores(id);

alter table escalacoes add constraint volante_a_id_fk foreign key(volante_a_id) references jogadores(id);

alter table escalacoes add constraint volante_b_id_fk foreign key(volante_b_id) references jogadores(id);

alter table escalacoes add constraint meia_id_fk foreign key(meia_id) references jogadores(id);

alter table escalacoes add constraint atacante_a_id_fk foreign key(atacante_a_id) references jogadores(id);

alter table escalacoes add constraint atacante_b_id_fk foreign key(atacante_b_id) references jogadores(id);

alter table escalacoes add constraint atacante_c_id_fk foreign key(atacante_c_id) references jogadores(id);


alter table escalacoes modify goleiro_id bigint not null;

alter table escalacoes modify zagueiro_direito_id bigint not null;

alter table escalacoes modify zagueiro_esquerdo_id bigint not null;

alter table escalacoes modify lateral_direito_id bigint not null;

alter table escalacoes modify lateral_esquerdo_id bigint not null;

alter table escalacoes modify volante_a_id bigint not null;

alter table escalacoes modify volante_b_id bigint not null;

alter table escalacoes modify meia_id bigint not null;

alter table escalacoes modify atacante_a_id bigint not null;

alter table escalacoes modify atacante_b_id bigint not null;

alter table escalacoes modify atacante_c_id bigint not null;


create table reservas(
			id bigint primary key auto_increment
			);

alter table reservas add column jogador_a_id bigint;

alter table reservas add column jogador_b_id bigint;

alter table reservas add column jogador_c_id bigint;

alter table reservas add column jogador_d_id bigint;

alter table reservas add column jogador_e_id bigint;

alter table reservas add column jogador_f_id bigint;

alter table reservas add column jogador_g_id bigint;

alter table reservas add column jogador_h_id bigint;

alter table reservas add column jogador_i_id bigint;

alter table reservas add column jogador_j_id bigint;

alter table reservas add column jogador_k_id bigint;

alter table reservas add column jogador_l_id bigint;


alter table reservas add constraint jogador_a_id_fk foreign key(jogador_a_id) references jogadores(id);

alter table reservas add constraint jogador_b_id_fk foreign key(jogador_b_id) references jogadores(id);

alter table reservas add constraint jogador_c_id_fk foreign key(jogador_c_id) references jogadores(id);

alter table reservas add constraint jogador_d_id_fk foreign key(jogador_d_id) references jogadores(id);

alter table reservas add constraint jogador_e_id_fk foreign key(jogador_e_id) references jogadores(id);

alter table reservas add constraint jogador_f_id_fk foreign key(jogador_f_id) references jogadores(id);

alter table reservas add constraint jogador_g_id_fk foreign key(jogador_g_id) references jogadores(id);

alter table reservas add constraint jogador_h_id_fk foreign key(jogador_h_id) references jogadores(id);

alter table reservas add constraint jogador_i_id_fk foreign key(jogador_i_id) references jogadores(id);

alter table reservas add constraint jogador_j_id_fk foreign key(jogador_g_id) references jogadores(id);

alter table reservas add constraint jogador_k_id_fk foreign key(jogador_h_id) references jogadores(id);

alter table reservas add constraint jogador_l_id_fk foreign key(jogador_i_id) references jogadores(id);


create table jogos(
			id bigint primary key auto_increment
			);


alter table jogos add column rodada_id bigint;

alter table jogos add column estadio_id bigint;

alter table jogos add column time_mandante_id bigint;

alter table jogos add column time_visitante_id bigint;

alter table jogos add column placar_id bigint;

alter table jogos add column arbitro_id bigint;

alter table jogos add column primeiro_arbitro_auxiliar_id bigint;

alter table jogos add column segundo_arbitro_auxiliar_id bigint;

alter table jogos add column escalacao_mandante_id bigint;

alter table jogos add column escalacao_reservas_mandante_id bigint;
alter table jogos add column escalacao_visitante_id bigint;
alter table jogos add column escalacao_reservas_visitante_id bigint;
			
alter table jogos add constraint rodada_id_fk foreign key(rodada_id) references rodadas(id);
alter table jogos add constraint estadio_id_fk foreign key(estadio_id) references estadios(id);
alter table jogos add constraint time_mandante_id_fk foreign key(time_mandante_id) references clubes(id);
alter table jogos add constraint time_visitante_id_fk foreign key(time_visitante_id) references clubes(id);
alter table jogos add constraint placar_id_fk foreign key(placar_id) references placares(id);
alter table jogos add constraint arbitro_id_fk foreign key(arbitro_id) references arbitros(id);
alter table jogos add constraint primeiro_arbitro_auxiliar_id_fk foreign key(primeiro_arbitro_auxiliar_id) references arbitros(id);
alter table jogos add constraint segundo_arbitro_auxiliar_id_fk foreign key(segundo_arbitro_auxiliar_id) references arbitros(id);
alter table jogos add constraint escalacao_mandante_id_fk foreign key(escalacao_mandante_id) references escalacoes(id);
alter table jogos add constraint escalacao_reserva_mandante_id_fk foreign key(escalacao_reserva_mandante_id) references reservas(id);
alter table jogos add constraint escalacao_visitante_id_fk foreign key(escalacao_visitante_id) references escalacoes(id);
alter table jogos add constraint escalacao_reserva_visitante_id_fk foreign key(escalacao_reserva_visitante_id) references reservas(id);

alter table jogos modify rodada_id bigint not null;
alter table jogos modify estadio_id bigint not null;
alter table jogos modify time_mandante_id bigint not null;
alter table jogos modify time_visitante_id bigint not null;
alter table jogos modify placar_id bigint not null;
alter table jogos modify arbitro_id bigint not null;
alter table jogos modify primeiro_arbitro_auxiliar_id bigint not null;
alter table jogos modify segundo_arbitro_auxiliar_id bigint not null;
alter table jogos modify escalacao_mandante_id bigint not null;
alter table jogos modify escalacao_reservas_mandante_id bigint not null;
alter table jogos modify escalacao_visitante_id bigint not null;
alter table jogos modify escalacao_reservas_visitante_id bigint not null;

