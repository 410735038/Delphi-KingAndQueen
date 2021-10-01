unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs ,Card, StdCtrls, ExtCtrls, IdUDPServer, IdBaseComponent,
  IdComponent, IdUDPBase, IdUDPClient, IdSocketHandle, Menus;

type
  TPoke = record
    val, color: integer; back: boolean;
  end;
  TForm1 = class(TForm)
    Panel1: TPanel;
    ListBox1: TListBox;
    Card1: TCard;Card2: TCard;Card3: TCard;
    ComboBox1: TComboBox; ComboBox2: TComboBox; ComboBox3: TComboBox; ComboBox4: TComboBox;
    Button1: TButton;
    Edit1: TEdit;
    UDPC: TIdUDPClient; UDPS: TIdUDPServer;
    Label1: TLabel; Label2: TLabel;
    Panel2: TPanel;
    RG: TRadioGroup;
    Edit3: TEdit;
    Button7: TButton;
    Panel3: TPanel;
    Button8: TButton;Button9: TButton;Button10: TButton;Button11: TButton;
    Panel4: TPanel;
    Card4: TCard;Card5: TCard;Card6: TCard;Card7: TCard;
    Card8: TCard;Card9: TCard;Card10: TCard;Card11: TCard;
    Card12: TCard;Card13: TCard;
    Panel5: TPanel;
    Edit2: TEdit;
    Button2: TButton;Button3: TButton;
    ComboBox5: TComboBox;
    Button4: TButton;Button5: TButton;
    Button12: TButton;Button13: TButton;
    ComboBox6: TComboBox;
    Button6: TButton;
    Panel6: TPanel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure ComboBox4Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure UDPSUDPRead(Sender: TObject; AData: TStream;
      ABinding: TIdSocketHandle);
    procedure ComboBox3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox5Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure RGClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure ComboBox6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Poke: array[0..2] of TCard;
  dPoke: array[0..9] of TCard;
  Clr: array[0..3] of TCardSuit;
  PCard: array[0..51] of TPoke;
  USER: array[0..9] of TPoke;
  hp: integer;
  turn, ATurn: integer;
  first: string;
  id: integer;
  pkpt:integer;
  dPokei:integer;
  cardcnt:integer;
  score:integer;
  EScore:integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
    Poke[0] := card1; Poke[1] := card2; Poke[2] := card3;
    dPoke[0] := card4; dPoke[1] := card5; dPoke[2] := card6;
    dPoke[3] := card7; dPoke[4] := card8; dPoke[5] := card9;
    dPoke[6] := card10; dPoke[7] := card11; dPoke[8] := card12; dPoke[9] := card13;
    Clr[0]:=Spades;  Clr[1]:=Hearts; Clr[2]:=Diamonds; Clr[3]:=Clubs;
    hp:=40; dPokei := 0; pkpt:=0; turn := 0; ATurn := 1; cardcnt:=0;
    score:=0; EScore:=0;

    Listbox1.Items.Insert(0,'     *******     ');
    Listbox1.Items.Insert(1,'請先在血量下的框框輸入您的IP位置');
    Listbox1.Items.Insert(2,'請輸入一位玩家至玩家列表中');
    Listbox1.Items.Insert(3,'輸入完後請按確認按鈕');
    Listbox1.Items.Insert(4,'並請選擇一個國王');
    Listbox1.Items.Insert(5,'     *******     ');

    panel3.Visible := false;panel4.Visible := false; panel6.Visible:=false;
    Button1.Enabled := false; button7.Enabled := false; button6.Enabled:= false;
    combobox6.Visible:=false;
    card4.Visible := false; card5.Visible := false; card6.Visible := false;
    card7.Visible := false; card8.Visible := false; card9.Visible := false;
    card10.Visible := false; card11.Visible := false; card12.Visible := false;
    card13.Visible := false;
end;

procedure TForm1.Button1Click(Sender: TObject);
var i, j, dAndr:integer; s,a: string;
begin
    if button1.Caption = 'Attack' then
    begin
       s := '(' + combobox2.Text + ',' + combobox4.Text + ')';
       dAndr := (strtoint(combobox2.Text) + trunc((strtoint(combobox4.text)/2)));
       s:='-'+s;
           if Poke[2].Suit = clr[0] then
           begin
                for i:=0 to combobox5.Items.Capacity-1 do
                begin
                    if combobox5.Items[i] = Edit3.Text then
                    begin
                        continue;
                    end;
                    UDPC.Host:=combobox5.Items[i];
                    UDPC.Send(s + inttostr(trunc(dAndR*1.5)) + 'damage');
                end;
                listbox1.Items.Insert(0,'你造成了'+inttostr(trunc(dAndR*1.5))+'點傷害');
           end
           else if Poke[2].Suit = clr[1] then
           begin
                for i:=0 to combobox5.Items.Capacity-1 do
                begin
                    if combobox5.Items[i] = Edit3.Text then
                    begin
                        continue;
                    end;
                    UDPC.Host:=combobox5.Items[i];
                    UDPC.Send(s + inttostr(dAndR) + 'damage');
                end;
                listbox1.Items.Insert(0,'你造成了'+inttostr(dAndR)+'點傷害');
           end
           else if Poke[2].Suit = clr[2] then
           begin
               if (turn mod 2) = 0 then
               begin
                   dAndR := trunc(dAndR * 1.5);
               end;
               for i:=0 to combobox5.Items.Capacity-1 do
               begin
                    if combobox5.Items[i] = Edit3.Text then
                    begin
                        continue;
                    end;
                    UDPC.Host:=combobox5.Items[i];
                    UDPC.Send(s + inttostr(dAndR) + 'damage');
               end;
               listbox1.Items.Insert(0,'你造成了'+inttostr(dAndR)+'點傷害');
           end
           else
           begin
               if (turn mod 2) = 1 then
               begin
                   dAndR := trunc(dAndR * 1.5);
               end;
               for i:=0 to combobox5.Items.Capacity-1 do
               begin
                    if combobox5.Items[i] = Edit3.Text then
                    begin
                        continue;
                    end;
                    UDPC.Host:=combobox5.Items[i];
                    UDPC.Send(s + inttostr(dAndR) + 'damage');
               end;
               listbox1.Items.Insert(0,'你造成了'+inttostr(dAndR)+'點傷害');
           end;
        if combobox2.ItemIndex > 0 then
        begin combobox2.Items.Delete(combobox2.ItemIndex); end
        else begin combobox2.Items.Delete(0); end;
        if combobox4.ItemIndex > 0 then
        begin combobox4.Items.Delete(combobox4.ItemIndex); end
        else begin combobox4.Items.Delete(0); end;
       //end;
    end
    else if button1.Caption = 'Recovery' then
    begin
       s := '(' + combobox2.Text + ',' + combobox4.Text + ')';
       dAndr := (strtoint(combobox2.Text) + trunc((strtoint(combobox4.text)/2)));
       s:='+'+s;
       if Poke[2].Suit = clr[0] then
       begin
           for i:=0 to combobox5.Items.Capacity-1 do
           begin
               if combobox5.Items[i] = Edit3.Text then
               begin
                    continue;
               end;
               UDPC.Host:=combobox5.Items[i];
               UDPC.Send(s + inttostr(dAndR) + 'health');
           end;
           listbox1.Items.Insert(0,s + '你回復了' + inttostr(dAndR) + '點血量');
           hp := hp + dAndR;
           if hp > 60 then
           begin
                hp := 60;
           end;
           label2.Caption:='HP:'+inttostr(hp);
       end
       else if Poke[2].Suit = clr[1] then
       begin
           for i:=0 to combobox5.Items.Capacity-1 do
           begin
              if combobox5.Items[i] = Edit3.Text then
              begin
                    continue;
              end;
              UDPC.Host := combobox5.Items[i];
              UDPC.Send(s + inttostr(trunc(dAndR*1.5)) + 'health');
          end;
          listbox1.Items.Insert(0,s + '你回復了' + inttostr(trunc(dAndR*1.5)) + '點血量');
          hp := hp + (dAndR*2);
          if hp > 60 then
          begin
                hp := 60;
          end;
          label2.Caption:='HP:'+inttostr(hp);
       end
       else if Poke[2].Suit = clr[2] then
       begin
            if (turn mod 2) = 1 then
            begin
                dAndR := trunc(dAndR * 1.5);
            end;
            for i:=0 to combobox5.Items.Capacity-1 do
            begin
                if combobox5.Items[i] = Edit3.Text then
                begin
                    continue;
                end;
                   UDPC.Host := combobox5.Items[i];
                   UDPC.Send(s + inttostr(dAndR) + 'health');
            end;
            listbox1.Items.Insert(0,s + '你回復了' + inttostr(dAndR) + '點血量');
            hp := hp + dAndR;
            if hp > 60 then
            begin
                hp := 60;
            end;
            label2.Caption:='HP:'+inttostr(hp);
        end
        else
        begin
              if (turn mod 2) = 0 then
              begin
                  dAndR := trunc(dAndR * 1.5);
              end;
              for i:=0 to combobox5.Items.Capacity-1 do
              begin
                  if combobox5.Items[i] = Edit3.Text then
                  begin
                      continue;
                  end;
                  UDPC.Host := combobox5.Items[i];
                  UDPC.Send(s + inttostr(dAndR) + 'health');
              end;
              listbox1.Items.Insert(0,s + '你回復了' + inttostr(dAndR) + '點血量');
              hp := hp + dAndR;
              if hp > 60 then
              begin
                  hp := 60;
              end;
              label2.Caption:='HP:'+inttostr(hp);
          end;
          for i:=0 to combobox5.Items.Capacity-1 do
          begin
              if combobox5.Items[i] = Edit3.Text then
              begin
                continue;
              end;
              UDPC.Host := combobox5.Items[i];
              UDPC.Send('EnemyHP:'+inttostr(hp));
          end;
      if combobox2.ItemIndex > 0 then
      begin combobox2.Items.Delete(combobox2.ItemIndex); end
      else begin combobox2.Items.Delete(0); end;
      if combobox4.ItemIndex > 0 then
      begin combobox4.Items.Delete(combobox4.ItemIndex); end
      else begin combobox4.Items.Delete(0); end;
  end
  else if button1.Caption = 'Knight' then
  begin
        if poke[0].Suit = clr[0] then
        begin
            for i:=0 to combobox5.Items.Capacity-1 do
            begin
                if combobox5.Items[i] = Edit3.Text then
                begin
                    continue;
                end;
                UDPC.Host := combobox5.Items[i];
                UDPC.Send('-SKnight:15');
            end;
            listbox1.Items.Insert(0,'你造成了15點傷害');
        end
        else if poke[0].Suit = clr[1] then
        begin
            for i:=0 to combobox5.Items.Capacity-1 do
            begin
                if combobox5.Items[i] = Edit3.Text then
                begin
                    continue;
                end;
                UDPC.Host := combobox5.Items[i];
                UDPC.Send('+HKnight:20health');
            end;
            listbox1.Items.Insert(0,'你回復了20點血量');
            hp := hp + 20;
            if hp > 60 then
            begin
                hp := 60;
            end;
            for i:=0 to combobox5.Items.Capacity-1 do
            begin
                if combobox5.Items[i] = Edit3.Text then
                begin
                    continue;
                end;
                UDPC.Host := combobox5.Items[i]; UDPC.Send('EnemyHP:'+inttostr(hp));
            end;
            label2.Caption := 'HP:' + inttostr(hp);
        end
        else if poke[0].Suit = clr[2] then
        begin
            if (ATurn mod 2 = 0) then
            begin
                for i:=0 to combobox5.Items.Capacity-1 do
                begin
                    if combobox5.Items[i] = Edit3.Text then
                    begin
                        continue;
                    end;
                    UDPC.Host := combobox5.Items[i];
                    UDPC.Send('-DKnight:10');
                end;
                listbox1.Items.Insert(0,'你造成了10點傷害');
            end
            else
            begin
                for i:=0 to combobox5.Items.Capacity-1 do
                begin
                   if combobox5.Items[i] = Edit3.Text then
                   begin
                       continue;
                   end;
                   UDPC.Host := combobox5.Items[i];
                   UDPC.Send('+DKnight:10health');
                end;
                listbox1.Items.Insert(0,'你回復了10點血量');
                hp := hp + 10;
                if hp > 60 then
                begin
                    hp := 60;
                end;
                for i:=0 to combobox5.Items.Capacity-1 do
                begin
                    if combobox5.Items[i] = Edit3.Text then
                    begin
                        continue;
                    end;
                    UDPC.Host := combobox5.Items[i];
                    UDPC.Send('EnemyHP:'+inttostr(hp));
                end;
                label2.Caption:='HP:' + inttostr(hp);
            end;
        end
        else if poke[0].Suit = clr[3] then
        begin
            if (ATurn mod 2 = 1) then
            begin
                for i:=0 to combobox5.Items.Capacity-1 do
                begin
                   if combobox5.Items[i] = Edit3.Text then
                   begin
                       continue;
                   end;
                   UDPC.Host := combobox5.Items[i];
                   UDPC.Send('-CKnight:10');
                end;
                listbox1.Items.Insert(0,'你造成了10點傷害');
            end
            else
            begin
                for i:=0 to combobox5.Items.Capacity-1 do
                begin
                   if combobox5.Items[i] = Edit3.Text then
                   begin
                       continue;
                   end;
                   UDPC.Host := combobox5.Items[i];
                   UDPC.Send('+CKnight:10health');
                end;
                listbox1.Items.Insert(0,'你回復了10點血量');
                hp := hp + 10;
                if hp > 60 then
                begin
                    hp := 60;
                end;
                for i:=0 to combobox5.Items.Capacity-1 do
                begin
                    if combobox5.Items[i] = Edit3.Text then
                    begin
                        continue;
                    end;
                    UDPC.Host := combobox5.Items[i];
                    UDPC.Send('EnemyHP:'+inttostr(hp));
                end;
                label2.Caption := 'HP:' + inttostr(hp);
            end;
        end;
        if combobox6.ItemIndex > 0 then
        begin combobox6.Items.Delete(combobox6.ItemIndex); end
        else begin combobox6.Items.Delete(0); end;
    end;
    //turn compute
    turn := turn + 1;
    for i:=0 to combobox5.Items.Capacity-1 do
    begin
        if combobox5.Items[i] = Edit3.Text then
        begin
            continue;
        end;
        UDPC.Host:=combobox5.Items[i];
        UDPC.Send('Turn:' + inttostr(turn));
    end;
    if (turn mod 2) = 0 then
    begin
        ATurn := ATurn + 1;
        Label1.Caption := 'Turn' + inttostr(ATurn);
    end;
    Button1.Enabled := false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    Combobox5.Items.Add(Edit2.Text);
    UDPC.Host := Edit3.Text;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin combobox5.DeleteSelected; end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    Button2.Enabled := false; Button3.Enabled := false;
    if Button4.Caption = 'Sure?' then
    begin
        Button4.Enabled := false; Button5.Enabled := false;
        button6.Enabled:=true;
    end;
    Button4.Caption := 'Sure?';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
    Button2.Enabled := true; Button3.Enabled := true;
    Combobox5.Clear; Combobox5.Text := '請新增一位玩家';
    Combobox5.Items.Insert(0, '127.0.0.1'); Button4.Caption := '確認';
end;

procedure TForm1.Button6Click(Sender: TObject);
var i,j,k: integer;
begin
    Randomize;
    first := combobox5.Items[Random(combobox5.Items.Capacity)];

    for i := 0 to combobox5.Items.Capacity -1 do
    begin
        UDPC.Host := combobox5.Items[i];
        UDPC.Send('Game Start!' + '[' + first + '] 的回合');
    end;

    Randomize;
    for i:=0 to 51 do
    begin
      repeat
        PCard[i].val := Random(13)+1;
        PCard[i].color := Random(4);
        k:=0;
            for j:=0 to i-1 do
            begin
                if(PCard[i].val=PCard[j].val)and(PCard[i].color=PCard[j].color) then
                begin
                    k:=1;
                    break;
                end;
            end;
      until k=0;
      for j:=0 to combobox5.Items.Capacity-1 do
      begin
          if combobox5.Items[j] = Edit3.Text then
          begin
              continue;
          end;
          UDPC.Host:=combobox5.Items[j];
      end;
      UDPC.Send('val:'+inttostr(Pcard[i].val)+'clr:'+inttostr(pcard[i].color));
    end;


end;

procedure TForm1.Button7Click(Sender: TObject);
begin panel3.Visible := true; Button1.Enabled:=false; end;

procedure TForm1.ComboBox1Click(Sender: TObject);
begin
    if combobox1.ItemIndex = 0 then
    begin
       combobox6.Visible:=false; combobox4.Visible:=true;
       button1.Caption:='Attack'; Poke[0].Suit := Clr[combobox1.itemindex];
    end
    else if combobox1.ItemIndex = 1 then
    begin
       combobox6.Visible:=false; combobox4.Visible:=true;
       button1.Caption:='Recovery'; Poke[0].Suit := Clr[combobox1.itemindex];
    end
    else
    begin
        combobox6.Visible:=true; combobox4.Visible:=false;
        button1.Caption:='Knight'; Poke[0].Suit := Clr[combobox1.itemindex];
    end;
end;

procedure TForm1.ComboBox2Click(Sender: TObject);
begin
    Poke[0].Value := strtoint(combobox2.Items[combobox2.ItemIndex]);
    Poke[0].Suit := Clr[combobox1.itemindex];
end;

procedure TForm1.ComboBox6Click(Sender: TObject);
begin
    poke[0].Value := 11;
    if combobox6.Items[combobox6.ItemIndex] = 'Spades' then
    begin poke[0].Suit := clr[0]; end
    else if combobox6.Items[combobox6.ItemIndex] = 'Hearts' then
    begin poke[0].Suit := clr[1]; end
    else if combobox6.Items[combobox6.ItemIndex] = 'Diamonds' then
    begin poke[0].Suit := clr[2]; end
    else begin poke[0].Suit := clr[3]; end;
end;

procedure TForm1.ComboBox3Click(Sender: TObject);
begin Poke[1].Suit := Clr[3]; end;

procedure TForm1.ComboBox4Click(Sender: TObject);
begin Poke[1].Value := combobox4.ItemIndex+1; Poke[1].Suit := Clr[3]; end;

procedure TForm1.ComboBox5Click(Sender: TObject);
begin UDPC.Host := ComboBox5.Text; end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
var i:integer;
begin
    if key = #13 then
    begin
        for i:=0 to combobox5.Items.Capacity -1 do
        begin UDPC.Host := combobox5.Items[i]; UDPC.Send('K13' + Edit1.Text); end;
    end;
end;

procedure TForm1.UDPSUDPRead(Sender: TObject; AData: TStream;
  ABinding: TIdSocketHandle);
var s,ip: string; i,j,tmp,k,l,hpr: integer;
var T,color:integer;
var Pair:boolean;
var count:array[0..12] of integer;
begin
    Pair:=false;
    k := AData.Size;
    setlength(s, k);
    AData.Read(s[1], k);
    if(Aturn >= 7) then
    begin button7.Enabled := true; end;

    //if attack
    if copy(s,1,1) = '-' then
    begin
        Button1.Enabled := true;
        if copy(s,3,6) = 'Knight' then
        begin
            ListBox1.Items.Insert(0, '[' + ABinding.PeerIP + ']對[' + Edit3.Text + ']造成' + copy(s,10,k-9) + '點傷害');
            hpr := strtoint(copy(s,10,k-9));
        end
        else
        begin
            ListBox1.Items.Insert(0, '[' + ABinding.PeerIP + ']對[' + Edit3.Text + ']造成' + s);
            hpr :=  strtoint(copy(s,9,(pos('d',s)-9)));
        end;
        hp := hp - hpr;
        if hp <= 0 then
        begin
            hp := 0;
            label2.Caption:='HP:'+inttostr(hp);
            listbox1.Items.Insert(0,'You Lose!!');
            panel6.Visible:=true;
            if Edit3.Text=ABinding.PeerIP then
            begin
                panel6.Caption:='遊戲結束!'+'['+ABinding.PeerIP+']'+'自殺了!';
                for i:=0 to combobox5.Items.Capacity-1 do
                begin
                   if combobox5.Items[i] = Edit3.Text then
                   begin
                       continue;
                   end;
                   UDPC.Host:=combobox5.Items[i];
                   UDPC.Send('You Win');
                end;
            end
            else
            begin
                UDPC.Host:=ABinding.PeerIP;
                panel6.Caption:='遊戲結束!'+'['+ABinding.PeerIP+']'+'勝利!';
                for i:=0 to combobox5.Items.Capacity-1 do
                begin
                   if combobox5.Items[i] = Edit3.Text then
                   begin
                       continue;
                   end;
                   UDPC.Host:=combobox5.Items[i];
                   UDPC.Send('You Win');
                end;
            end;
            button1.Enabled:=false;
            combobox1.Enabled:=false; combobox2.Enabled:=false;
            combobox3.Enabled:=false; combobox4.Enabled:=false;
            combobox6.Enabled:=false;
        end;
        label2.Caption:='HP:'+inttostr(hp);
        for i:=0 to combobox5.Items.Capacity-1 do
        begin
            if combobox5.Items[i] = Edit3.Text then
            begin
                continue;
            end;
            UDPC.Host:=combobox5.Items[i];
        end;
        UDPC.Send('EnemyHP:'+inttostr(hp));
        Button1.Enabled := true;
        dpoke[dpokei].Value:=PCard[pkpt].val;
        dpoke[dpokei].Suit:=clr[PCard[pkpt].color];
        dpoke[dpokei].Visible:=true;
        dPokei:=dPokei+1;
        pkpt:=pkpt+1;
        UDPC.Send('pkpt:'+inttostr(pkpt));
    end
    else if copy(s,1,1) = '+' then //if enemy recovery
    begin
        Button1.Enabled := true;
        if copy(s,3,6) = 'Knight' then
        begin
            ListBox1.Items.Insert(0, '[' + ABinding.PeerIP + ']回復了' +  copy(s,10,2) + '點生命');
        end
        else
        begin
            ListBox1.Items.Insert(0, '[' + ABinding.PeerIP + ']回復了' + s);
        end;
        Button1.Enabled := true;
    end
    else if copy(s,1,11) = 'Game Start!' then //if someone press start button
    begin
        ListBox1.Items.Insert(0, s);
        ip:=copy(s,13,Pos(']',s)-13);
        if ip = Edit3.Text then
        begin
            Button1.Enabled := true;
        end;
        Button6.Visible := false;
    end
    else if copy(s,1,6) = 'Report' then  //if click report button and choose id
    begin
        listbox1.Items.Insert(0,s);
        if ((id = 0) and (copy(s,17,k-16) = 'Spades'))
        or ((id = 1) and (copy(s,17,k-16) = 'Hearts'))
        or ((id = 2) and (copy(s,17,k-16) = 'Diamonds'))
        or ((id = 3) and (copy(s,17,k-16) = 'Clubs'))
        then
        begin
            listbox1.Items.Insert(0,'You Lose');
            UDPC.Host:=ABinding.PeerIP;
            UDPC.Send('You Win');
            panel6.Caption:='遊戲結束!'+'['+ABinding.PeerIP+']'+'勝利';
            panel6.Visible:=true;
            button1.Enabled:=false;
            combobox1.Enabled:=false; combobox2.Enabled:=false;
            combobox3.Enabled:=false; combobox4.Enabled:=false;
            combobox6.Enabled:=false;
        end
        else
        begin
            UDPC.Host := ABinding.PeerIP;
            UDPC.Send('You do not get it! HAHA');
            Button1.Enabled:=true;
        end;
    end
    else if copy(s,1,3) = 'You' then //if id equal to player check
    begin
        if copy(s,1,7) = 'You Win' then
        begin
            listbox1.Items.Insert(0,'You Win');
            panel6.Caption:='遊戲結束!'+'['+Edit3.Text+']'+'勝利';
            panel6.Visible:=true;
            button1.Enabled:=false;
            combobox1.Enabled:=false; combobox2.Enabled:=false;
            combobox3.Enabled:=false; combobox4.Enabled:=false;
            combobox6.Enabled:=false;
        end
        else if copy(s,5,2) = 'do' then
        begin listbox1.Items.Insert(0,s); end;
    end
    else if copy(s,1,3) = 'K13' then   //chatroom
    begin
        Listbox1.Items.Insert(0,'[' + ABinding.peerip + ']說:' + copy(s,4,k-3));
    end
    else if copy(s,1,4) = 'pkpt' then  //pokecard check
    begin
        pkpt:=strtoint(copy(s,6,k-5));
    end
    else if copy(s,1,4) = 'Turn' then  //Turn check
    begin
        turn := turn + 1;
        if((turn mod 2) = 0) then
        begin
            ATurn := ATurn + 1;
            Label1.Caption := 'Turn' + inttostr(ATurn);
        end;
        if ATurn = 10 then
        begin
            for i:=0 to combobox5.Items.Capacity-1 do
            begin
                UDPC.Host:=combobox5.Items[i];
                UDPC.Send('final');
            end;
            button1.Enabled:=false;
            combobox1.Enabled:=false; combobox2.Enabled:=false;
            combobox3.Enabled:=false; combobox4.Enabled:=false;
            combobox6.Enabled:=false;
        end;
    end
    else if copy(s,1,6) = 'Scores' then
    begin
        listbox1.Items.Insert(0,'Enemy Score: ' + copy(s,8,k-7));
        EScore:=strtoint(copy(s,8,k-7));
        panel6.Visible:=true;
        if score > EScore then
        begin
            listbox1.Items.Insert(0,'You Win');
            panel6.Caption:='遊戲結束!'+'['+Edit3.Text+']'+'勝利';
        end
        else if score < EScore then
        begin
            listbox1.Items.Insert(0,'You Lose');
            panel6.Caption:='遊戲結束!'+'['+ABinding.PeerIP+']'+'勝利';
        end
        else if score = EScore then
        begin
            listbox1.Items.Insert(0,'Draw!');
            panel6.Caption:='遊戲結束!雙方平手!!';
        end;
        //halt game
        button1.Enabled:=false;
        combobox1.Enabled:=false; combobox2.Enabled:=false;
        combobox3.Enabled:=false; combobox4.Enabled:=false;
        combobox6.Enabled:=false;
    end
    else if copy(s,1,3) = 'val' then
    begin
        PCard[cardcnt].val := strtoint(copy(s,5,pos('c',s)-5));
        PCard[cardcnt].color := strtoint(copy(s,pos('c',s)+4,1));
        cardcnt:=cardcnt+1;
        //listbox1.Items.Insert(0,inttostr(pcard[cardcnt].val)+'+'+inttostr(pcard[cardcnt].color));
        //listbox1.Items.Insert(0,s);
    end
    else if copy(s,1,5) = 'Enemy' then
    begin label3.Caption:='E-HP:' + copy(s,9,k-8); end
    else if copy(s,1,5) = 'final' then
    begin
        if ((ATurn = 10) and (hp > 0)) then
        begin
            //sort cards
            for l:=0 to 1 do
            begin
                for i:=0 to dPokei-1 do
                begin
                    tmp := dpoke[i].Value;
                    j:=i-1;
                    while ((tmp < dpoke[j].Value) and (j >= 0)) do
                    begin
                        dpoke[j+1].Value := dpoke[j].Value; j:=j-1;
                    end;
                    dpoke[j+1].Value := tmp;
                end;
            end;

            //use counting sort to cal every card.value number
            for i:=0 to 12 do
            begin count[i]:=0; end;
            for i:=0 to dpokei-1 do
            begin
                count[dpoke[i].Value-1] := count[dpoke[i].Value-1]+1;
                score := score + dpoke[i].Value;
                if count[dpoke[i].Value-1] = 2 then
                begin Pair := true end;
            end;
            if dpokei-1 >= 1 then
            begin
                for i:=0 to 12 do
                begin
                    if count[i] = 2 then
                    begin score := score + 10; end
                    else if dpokei-1 >= 4 then
                    begin
                        if count[i] = 3 then
                        begin
                            if Pair=true then
                            begin score := score + 30; end;
                        end;
                    end
                    else if dpokei-1 >= 4 then
                    begin
                        if count[i] = 4 then
                        begin score := score + 40; end;
                    end;
                end;
            end;
            j:=0; T:=0;
            //check straight
            if dpokei-1 >= 4 then
            begin
                for i:=j to j+3 do
                begin
                    tmp:=dpoke[i].Value;
                    if (dpoke[i+1].Value = tmp+1) then
                    begin
                        T:=T+1;
                        if (dpoke[i].Suit = dpoke[i+1].Suit) then
                        begin color := color + 1; end;
                        if (T = 4) and (color = 4) then
                        begin score := score + 100; end
                        else if T = 4 then
                        begin score := score + 50; end;
                    end;
                    j:=j+1; T:=0;
                    if j+4 = dpokei then begin break; end;
                end;
            end;
            //card number check
            (*for i:=0 to 12 do
            begin
                test := test + ' ' + inttostr(count[i]);
            end;
            listbox1.Items.Insert(0,test);*)
            listbox1.Items.Insert(0,'Scores:'+inttostr(score));
            for i:=0 to combobox5.Items.Capacity-1 do
            begin
                if combobox5.Items[i] = Edit3.Text then
                begin
                    continue;
                end;
                UDPC.Host:=combobox5.Items[i];
            end;
            UDPC.Send('Scores:' + inttostr(score));
        end;
    end;
end;

procedure TForm1.RGClick(Sender: TObject);
begin
    Poke[2].ShowDeck := false;
    if rg.Items[rg.ItemIndex] = 'S' then
    begin
        Poke[2].Suit := clr[0]; Poke[2].Value := 13; id := 0; rg.Enabled := false;
    end
    else if rg.Items[rg.ItemIndex] = 'H' then
    begin
        Poke[2].Suit := clr[1]; Poke[2].Value := 13; id := 1; rg.Enabled := false;
    end
    else if rg.Items[rg.itemindex] = 'D' then
    begin
        Poke[2].Suit := clr[2]; Poke[2].Value := 13; id := 2; rg.Enabled := false;
    end
    else begin
        Poke[2].Suit := clr[3]; Poke[2].Value := 13; id := 3; rg.Enabled := false;
    end;
end;

procedure TForm1.Button8Click(Sender: TObject);
var i: integer;
begin
    turn := turn + 1;
    for i:=0 to combobox5.Items.Capacity-1 do
    begin
        if combobox5.Items[i] = Edit3.Text then
        begin
            continue;
        end;
        UDPC.Host:=combobox5.Items[i];
        UDPC.Send('Report! You Are ' + button8.Caption);
    end;
    UDPC.Send('Turn:' + inttostr(turn));
    if (turn mod 2) = 0 then
    begin
        ATurn := ATurn + 1;
        label1.Caption := 'Turn' + inttostr(ATurn);
    end;
    Button1.Enabled:=false;
    button7.Enabled := false;
    panel3.Destroy;
end;

procedure TForm1.Button9Click(Sender: TObject);
var i: integer;
begin
    turn := turn + 1;
    for i:=0 to combobox5.Items.Capacity-1 do
    begin
        if combobox5.Items[i] = Edit3.Text then
        begin
            continue;
        end;
        UDPC.Host:=combobox5.Items[i];
        UDPC.Send('Report! You Are ' + button9.Caption);
    end;
    UDPC.Send('Turn:' + inttostr(turn));
    if (turn mod 2) = 0 then
    begin
        ATurn := ATurn + 1;
        label1.Caption := 'Turn' + inttostr(ATurn);
    end;
    Button1.Enabled:=false;
    button7.Enabled := false;
    panel3.Destroy;
end;

procedure TForm1.Button10Click(Sender: TObject);
var i: integer;
begin
    turn := turn + 1;
    for i:=0 to combobox5.Items.Capacity-1 do
    begin
        if combobox5.Items[i] = Edit3.Text then
        begin
            continue;
        end;
        UDPC.Host:=combobox5.Items[i];
        UDPC.Send('Report! You Are ' + button10.Caption);
    end;
    UDPC.Send('Turn:' + inttostr(turn));
    if (turn mod 2) = 0 then
    begin
        ATurn := ATurn + 1;
        label1.Caption := 'Turn' + inttostr(ATurn);
    end;
    Button1.Enabled:=false;
    button7.Enabled := false;
    panel3.Destroy;
end;

procedure TForm1.Button11Click(Sender: TObject);
var i: integer;
begin
    turn := turn + 1;
    for i:=0 to combobox5.Items.Capacity-1 do
    begin
        if combobox5.Items[i] = Edit3.Text then
        begin
            continue;
        end;
        UDPC.Host:=combobox5.Items[i];
        UDPC.Send('Report! You Are ' + button11.Caption);
    end;
    UDPC.Send('Turn:' + inttostr(turn));
    if (turn mod 2) = 0 then
    begin
        ATurn := ATurn + 1;
        label1.Caption := 'Turn' + inttostr(ATurn);
    end;
    Button1.Enabled:=false;
    button7.Enabled := false;
    panel3.Destroy;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin panel4.Visible := true; button12.Visible := false; end;

procedure TForm1.Button13Click(Sender: TObject);
begin panel4.Visible := false; button12.Visible := true; end;

end.
