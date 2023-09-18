
# Projeto One for All

### Objetivos:
- Praticar a normalização de tabelas a fim de popular um banco de dados.
- Praticar a escrita de queries na linguagem SQL, utilizando o banco MySQL.

As planilhas presentes nos arquivos xlsx foram modeladas e normalizadas para a 3° Forma Normal. Foram criados arquivos no formato deasfionN.sql (dentro da pasta challenges), sendo que cada arquivo representa uma query executada no banco. Os demais arquivos foram desenvolvidos pela Trybe.

Utilizou-se o Workbench para popular o banco de dados e realizar as queries.

### Para iniciar o projeto:
- git clone git@github.com:sthefanimartinelli/project-19-back-end-one-for-all.git
- docker compose up
- docker exec -it one_for_all bash
- npm install

### Regras de negócio para modelagem das tabelas

- Cada pessoa usuária pode possuir apenas um plano;
- Uma pessoa artista pode ter vários álbuns;
- Uma pessoa artista pode ser seguida por várias pessoas usuárias;
- Cada álbum possui apenas uma pessoa artista como principal;
- Cada álbum possui várias canções;
- Cada canção está contida em apenas um álbum;
- Uma pessoa usuária pode possuir apenas um plano;
- Cada música do histórico de reprodução pode aparecer uma única vez por pessoa (o objetivo do histórico é saber quais canções já foram reproduzidas e não quantas vezes foram reproduzidas);
- Uma pessoa usuária pode seguir várias pessoas artistas, mas cada pessoa artista pode ser seguida apenas uma vez por pessoa usuária.

### Requisitos do projeto:
| Requisito | Descrição |
|-----------|-----------|
| 01 | Normaliza as tabelas para a 3ª Forma Normal |
| 02 | Exibe as estatísticas musicais |
| 03 | Exibe o histórico de reprodução para cada pessoa usuária |
| 04 | Exibe a condição da pessoa usuária se está ativa ou inativa |
| 05 | Exibe top 2 hits mais tocados no momento |
| 06 | Exibe o relatório de faturamento da empresa |
| 07 | Exibe uma relação de todos os álbuns produzidos por cada artista |
| 08 | Exibe uma relação de álbuns produzidos pela artista Elis Regina |
| 09 | Exibe a quantidade de músicas no histórico de Barbara Liskov |
| 10 | Normaliza a tabela de canções favoritas para a 3ª Forma Normal |
| 11 | Exibe o top 3 de álbuns com mais músicas favoritadas |
| 12 | Exibe o ranking de pessoas artistas |
| 13 | Exibe a relação de pessoas usuárias e favoritadas por faixa etária |
