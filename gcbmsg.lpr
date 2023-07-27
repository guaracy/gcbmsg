{$mode objfpc}{$H+}

Uses
  Crt, SysUtils, process;

procedure uso(ret:integer=0);
const
  msg='Mensagem...';
begin
  TextColor(LightCyan);
  writeln('USO:');
  TextColor(White);
  writeln(#9'gcbmsg opções [mensagem]');
  TextColor(Yellow);
  writeln('OPÇÕOES:');
  TextColor(White);
  writeln(#9'-0 = Initial commit');
  writeln(#9'-f = Novas funcionalidades. => FEAT : ',msg);
  writeln(#9'-x = Correção de bugs => FIX : ',msg);
  writeln(#9'-r = Refatoração do código. REFACT : ',msg);
  writeln(#9'-t = Inclusão ou correção de testes. => TESTS : ',msg);
  writeln(#9'-d = Atualização ou inclusão de documentação => DOC : ',msg);
  writeln(#9'-m = Adiciona apenas a mensagem => ',msg);
  writeln(#9'-h = Mostra esta ajuda');
  TextColor(Yellow);
  writeln('MENSAGEM:');
  TextColor(White);
  writeln(#9'Mensagem entre aspas (ignorada apenas com a opção -0)');
  if ParamCount>2 then
    writeln('** Muitos parâmeros.  Esqueceu de delimitar a mensagem com aspas?');
  halt(ret);
end;

procedure comando;
var
  cmd, cDir, sOut:string;
begin
  if ParamStr(1)='-0' then
    cmd:='Initial commit'
  else begin
    case ParamStr(1) of
      '-f':cmd:='FEAT';
      '-x':cmd:='FIX';
      '-r':cmd:='REFAC';
      '-t':cmd:='TESTS';
      '-d':cmd:='DOC';
      '-m':cmd:='';
      '-h':uso;
    else
      TextColor(LightRed);
      Writeln('ERRO: opção ',ParamStr(1),' não reconhecida.');
      halt(99);
    end;
    if ParamStr(2)='' then  begin
      TextColor(LightRed);
      Writeln(sLineBreak+'ERRO: mensagem não informada.'+sLineBreak);
      halt(99);
    end;
    if cmd<>'' then
      cmd+=' : '+ParamStr(2)
    else
      cmd:=ParamStr(2);
  end;
  cDir:=IncludeTrailingPathDelimiter(GetCurrentDir);
  if not RunCommandInDir(cDir,'git',['commit','-m',cmd],sOut,[poWaitOnExit,poStderrToOutPut,poNoConsole]) then
    TextColor(LightRed);
  writeln(sOut);
end;

begin
  if (paramcount=0) or (ParamCount>2) then
    uso;
  comando;
end.

// https://www.freecodecamp.org/news/how-to-write-better-git-commit-messages/



(*
   gbc correção da largura máxima

    feat – a new feature is introduced with the changes
    fix – a bug fix has occurred
    chore – changes that do not relate to a fix or feature and don't modify src or test files (for example updating dependencies)
    refactor – refactored code that neither fixes a bug nor adds a feature
    docs – updates to documentation such as a the README or other markdown files
    style – changes that do not affect the meaning of the code, likely related to code formatting such as white-space, missing semi-colons, and so on.
    test – including new or correcting previous tests
    perf – performance improvements
    ci – continuous integration related
    build – changes that affect the build system or external dependencies
    revert – reverts a previous commit

 *)

