-- CRIAÇÃO DA TABELA (somente se não existir)
IF OBJECT_ID('dbo.FLY_SX5_TAB_GENER', 'U') IS NULL
BEGIN
    CREATE TABLE FLY_SX5_TAB_GENER (
        X5_TABELA VARCHAR(10)  NOT NULL,
        X5_CHAVE  VARCHAR(10)  NOT NULL,
        X5_DESCRI VARCHAR(255) NULL,
        CONSTRAINT PK_FLY_SX5_TAB_GENER PRIMARY KEY (X5_TABELA, X5_CHAVE)
    );
END;

-- LIMPEZA E INSERÇÃO DOS DADOS
TRUNCATE TABLE FLY_SX5_TAB_GENER;

INSERT INTO FLY_SX5_TAB_GENER (
    X5_TABELA,
    X5_CHAVE,
    X5_DESCRI
)
SELECT
    X5_TABELA, 
    X5_CHAVE, 
    -- 1. Primeiro convertemos para maiúsculo
    -- 2. Usamos o TRANSLATE para trocar acentos e cedilha pelas letras base correspondentes
    TRANSLATE(
        UPPER(X5_DESCRI), 
        'ÁÀÂÃÄÉÈÊËÍÌÎÏÓÒÔÕÖÚÙÛÜÇ', 
        'AAAAAEEEEIIIIOOOOOUUUUC'
    ) AS X5_DESCRI
FROM
    SX5990
WHERE
    D_E_L_E_T_ = ' '
ORDER BY
    X5_TABELA, X5_CHAVE;