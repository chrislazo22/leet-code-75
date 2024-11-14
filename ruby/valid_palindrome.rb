require "debug"

def valid_palindrome(s)
  n = s.length

  n.times do |index|
    arr = s.chars
    arr.delete_at(index)
    return true if arr.join == arr.reverse
  end

  false
end

p valid_palindrome("dbrlaxkecqlesjhsuqslravbmdvnlgfspcvimrtdqdcqqlaqxtrrqiuarjclkilbtkkenqgknuosqtrtrrduleffhgzszeczrnxdrwkjiudibnbfxtqmtcnxrpiicgvpxgnjjclyqkwitkswrfuqgsvzopfkjpnocrhifahjaaejmtrvczuzobqoatjwcixtcnpdggsfdyscqcllfdmysdtqpfpzrbltzsonkqtgvuidqszjgqeeglljokllcphfmpsduzjkjrodtfirpcyxpbbykmkhfmedfedjjrbycpdjlqiqywklfxzctrtbnuhpluvmoofxokyaxkcnkkvylnzjfuyoobtuymndyezxrtekfkldlijakaencgfkpikwfsyxtvzqdmvaexpdfwnsoblawlsycmvyvhnextjwjndapcpnvsnztibkjjhhrhyjrdsrfzyrtgetpxjxzcaaehjnpinqsgzykvraifdfaoggcyfrmbuhzctjzueqsiivwfquuwszjwhixonlklzvkkvgczskyseetcrcychdehshhpkouwstaeymviuursatmlliurcabuuxrmislauavikjuvjpdcfqnnzwflcepdvaqbfzdcogtuljvoebldxmlfhbgnxvxaagpepmzbzsmcemyxhrobkqbpwilkwnepubmdugssrwbmogezbttgxhdldqckivmponkbwkrjksfdpbsemmjdbsipxkdvfsvqmtshogqeufiolcndfdjyauwpxkogfjicxtktsuioecmlyxqwwgbuuzwwdktdktjldmptpfpzoivxzeuotzcwfuyhghjjhejuechcrjfcbchjijephldsamuqtryoovvdqhfeecertmjouhbfxlemtmvdpmymrfqwschttlplljzzpiqmydgcppfqdwtqbjxtlkseuklytzqniakliclvgvhhkalsttwsgcoqdxawdzrtvnybmgescvromhwndfzzfdnwhmorvcsegmbynvtrzdwaxdqocgswttslakhhvgvlcilkainqztylkueskltxjbqtwdqfppcgdymqipzzjllpltthcswqfrmympdvmtmelxfbhuojmtreceefhqdvvooyrtqumasdlhpejijhcbcfjrchceujehjjhghyufwcztouezxviozpfptpmdljtkdtkdwwzuubgwwqxylmceoiustktxcijfgokxpwuayjdfdncloifueqgohstmqvsfvdkxpisbdjmmesbpdfsqkjrkwbknopmvikcqdldhxgttbzegombwrssgudmbupenwkliwpbqkborhxymecmszbzmpepgaaxvxngbhflmxdlbeovjlutgocdzfbqavdpeclfwznnqfcdpjvujkivaualsimrxuubacruillmtasruuivmyeatswuokphhshedhcycrcteesykszcgvkkvzlklnoxihwjzswuuqfwviisqeuzjtczhubmrfycggoafdfiarvkyzgsqnipnjheaaczxjxptegtryzfrsdrjyhrhhjjkbitznsvnpcpadnjwjtxenhvyvmcyslwalbosnwfdpxeavmdqzvtxysfwkipkfgcneakajildlkfketrxzeydnmyutbooyufjznlyvkknckxaykoxfoomvulphunbtrtczxflkwyqiqljdpcybrjjdefdemfhkmkybbpxycpriftdorjkjzudspmfhpcllkojllgeeqgjzsqdiuvgtqknosztlbrzpfpqtdsymdfllcqcsydfsggdpnctxicwjtaoqbozuzcvrtmjeaajhafihrconpjkfpozvsgqufrwsktiwkqylcjjngxpvgciiprxnctmqtxfbnbiduijkwrdxnrzcezszghffeludrrtrtqsounkgqnekktblikljrauiqrrtxqalqqcdqdtrmivcpsfglnvdmbvarlsqushjselqcekxalrbd")
