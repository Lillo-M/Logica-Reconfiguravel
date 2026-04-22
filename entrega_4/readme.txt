A simulação em RTL pode ser observada no arquivo: snapshot_rtl.png

Para a simulação em Gate Level os arquivos: snapshot_gate_level.png e snapshot_gate_level_atraso.png

De acordo com o relatório relatório_time_quest_fmax.png, o TimeQuest estimou para o Slow Model:

    Frequência maxima: 412.03 MHz
    portanto, um periodo de ~2.427 ns

Analisando o snapshot snapshot_gate_level_atraso.png, medimos o tempo de propagação mais longo observado:

    Tempo medido: 7.032 ns
    Frequência Máxima Calculada de ~142.21 MHz

Existe uma discrepância significativa entre a Fmax​ do Quartus (412 MHz)
e a observada no atraso de 7.032 ns da simulação (142 MHz).

Para o totalizador do item A, temos um atraso de 6.29 ns para cada detecção de bit.
Para os do item B, temos:
  b.1 VARIABLES  FOR        -> 6.090 ns 
  b.2 VARIABLES  WHILE      -> 7.033 ns
  b.3 VARIABLES(IF then)    -> 6.582 ns
  b.4 SIGNALS(case/when)    -> 6.087 ns
  b.5 SIGNALS (soma direta) -> 6.584 ns
  b.6 SIGNALS (soma DEMUX)  -> 6.609 ns

Então, o circuito mais rapido gerado foi utilizando case/when que é basicamente uma look-up table,
seguido por apenas 3 nano segundos pelo circuito gerado pelo FOR.
