function Letra_Maiuscula {
    param ([string]$Name_Text)
######Define o nome a ser tratado
$name = $Name_Text
######Divide o nome a cada " " existente
$name = $name.Split()
######Conta a quantidade de palavras existentes
$count_word = $name.Count
#####Define uma Array para armazenar os nomes
$name_complete = @()
#####Define count=0
$count = 0
#####Estrutura de repetição para tratar cada nome individualmente
while ($count -lt $count_word) {
    ######Conta a quantidade de Caracteres existentes
    $count_character = $name[$count] | Measure-Object -Character
    $count_character = $count_character.Characters
    ######Transforma em maiusculo a primeira letra e em minusculo a partir da segunda letra
    $name_s = $name[$count]
    $name_s =  $name[$count].Substring(0,1).ToUpper()+$name_s.Substring(1,$count_character-1).ToLower()
######Adiciona na array cada nome
$name_complete += $name_s
######Conta +1 para continuar a estrutura de repetição
$count = $count + 1

}
######Mostra os resultados
echo $name_complete[0] $name_complete[1] $name_complete[2] $name_complete[3] $name_complete[4] $name_complete[5] `
$name_complete[6] $name_complete[7] $name_complete[8]
}
