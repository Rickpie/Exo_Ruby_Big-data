#mail_list.each {| ceci_handle | 
#puts ceci_handle.length 
#} # une boucle qui fait le tour du tableau, Nom de la variable que each va mettre dans l'index courant, index = position de la valeur, (commence a 0), utilisation de la variable
#puts value.gsub!(/@/,"") = REMPLACER @ par rien
#puts value.gsub("@","") = Remplacer @ par rien mais oui
#if (value.length) -1 != value.gsub("@","").length ' vérif du nombre d'@, ' j'en attends 0 ou 2 ( différence de 1)

def question_1(tableau)
        puts "La réponse à la question 1 : " + tableau.length.to_s # affiche / longueur tableau
end

def question_2(tab)
    value_mini= tab[0] # =@jcunniet """""""""""""premier élément du tableau
    tab.each {| value | 
        if value.length < value_mini.length #comparaison de la taille des deux chaines de carractere Value et value_mini
           value_mini = value
        end
    }
    puts "La réponse à la question 2 : " + value_mini
end


def question_3(beat)
    count= 0 #Compteur d'élément de la taille " 5 " 
    beat.each { |value|
        if value.length == 5 +1 
            count = count + 1
        end    
    }
    puts "La réponse à la question 3 : " + count.to_s
end

def question_4(tab)
    count = 0
    tab.each {|capitale|
        #if  capitale == ["A", "B", "C", "D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
        if capitale[1] == capitale[1].capitalize #en prennant le carractere +1 (soit 2, seconde position ) si il est égale a lui même capitalisé alors le compteur s'incrémente 
            count = count +1
        end
        }
    puts "La réponse a la question 4 : " + count.to_s #rajoute l'une a la suite de l'autre // concaténer 
end

def question_5 (tab)
    puts tab.sort { |a, b| isstringhigherthan(a,b) } 
    puts "-------------------------------------------------------------------------------------------------------------------------"
end

def isstringhigherthan(string_1, string_2)
    index = 0 #on commence a la postion 0
    while index < string_1.length && index < string_2.length # Index 0 inférieur a la taille de la chaine string_1 ET plus petit que la chaine de string_2
        if string_1[index].downcase < string_2[index].downcase # Si le carractere en position index ( soit 0, puis 1 puis 2 (boucle while+ index +1)) est plus petit ( soit avant alphabetique) dans le string 1 que dans le string 2
            return -1 #Alors c'est faux, soit, le string 1 est avant le string 2 ( string complet vu que tout est comparé)
        elsif string_2[index].downcase < string_1[index].downcase # Si le carractere en position index ( soit 0, puis 1 puis 2 (boucle while+ index +1)) est plus petit ( soit avant alphabetique) dans le string 2 que dans le string 1
            return 1 #Alors c'est vrai, alors le string 1 est bien apres le string 2
        end        
            index = index +1 #sur chaque boucle, le ' check " se fait au carrectere suivant et ceux jusqu'a la fin du 'mot' commence de la même facon
    end    
    if string_1.length > string_2.length #les mots commencent par la même chose, mais le mot le plus long sera donc apres
        return 1 
        else 
            return -1    
    end
end
  
def question_6(tab) #Trie la liste de handle par taille des handle 
        long = tab.sort_by! { |value| value.length }
        puts long
end

def question_7(tab) #Ou est spencer
    position = tab.find_index("@epenser") 
    position = position + 1
    puts "Voici la position de @e-penser : " + position.to_s
end

def question_8(tab) #Sors-moi une répartition des handle par taille de ces derniers (nombre de handle avec 1 caractère, nombre de handle avec 2 caractères,nombre de handle avec 3 caractères,etc)
    result = Array.new
    tab.each { |handle| 
        if result.length + 1 < handle.length || !result[handle.length]
            result[handle.length] = 1
        elsif 
            result[handle.length] = result[handle.length] + 1
        end
    }
    index = 0 
    while index < result.length 
        if result[index] 
            puts "Le nombre d'élément sur " + index.to_s + " carateres est : " + result[index].to_s
        end
    index = index + 1 
    end
end


mail_list =["@jcunniet","@PaulLampon","@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN","@NolwennCosson","@ADaboval","@Remibaldy","@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@Panamorama","@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj","@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre","@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon","@e_vallerey","@IsabelleSouquet","@AudeDavidRossi","@Yoann_Pa","@CeliaPenavaire","@perraultvincent","@cboulate","@JustineWeyl","@Paulinejacot","@juliechab","@aslechevallier","@phnou","@Seb_Pommier","@Alex_Bensaid","@GuillaumeGaven","@annelaurechouin","@Oliviader","@guerricp","@JMMarchaut","@cyceron","@gregory_raymond","@vhunsinger","@l_peillon","@fannyguinochet","@EAssayag","@KibweAdom","@YvonHerry","@JohanGarciajg","@saidlabidi","@lauranneprov","@LeaDavy","@francois_remy","@CGuicheteau","@FloMaillet","@m_perroud","@oBrunet_TSMF","@MoonVdc","@jc2taille","@NellyMoussu","@VirginK","@b_misa","@FabriceCouste","@barbara_prose","@lelia2m","@brunoaskenazi","@laurenechamp","@ysisbox","@juliengagliardi","@PierreLel","@kdeniau","@_TerraInc","@DominicArpin","@antoinfonteneau","@nanotousch","@jb_roch","@YaniKhezzar","@Anne_Bechet","@NCapart","@SamyBenNaceur","@Joumany","@Julietteraynal","@TGiraudet","@SaraTanit","@HappeFrederic","@antoinellorca","@michelpicot","@Sev_Ryne","@bobdobolino","@murdever","@YGrandmontagne","@Mnyo","@EdKOSCIANSKI","@tnoisette","@jankari","@delbello_rom","@rflechaux","@NadiaSorelli","@IT_Digital","@abarbaux","@PhilippeLeroy","@schaptal","@marionspee","@lisavignoli","@ChloeAeberhardt","@MartineJacot","@JuliaPascualita","@curieusedetout","@sgraveleau","@bif_o","@ElisaPineau","@zinebdryef","@apiquard","@pierrehaski","@StephanieDelmas","@Blandine_Garot","@vergara_i","@evan_lebastard","@SophieVclt","@OlivierLevrault","@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis","@LucMagoutier","@AgatheMuller","@SGianninelli","@PaulineBoyer33","@NaomiHalll","@romaindlx","@marionbr","@Burtschy","@JacobEtienne","@as_lizzani","@marie_simon","@LaureDaussy","@FabriceAmedeo","@min","@LoubnaChlaikhy","@PlummerWilliam","@OlivierMarin1","@alaurefremont","@mwesfreid","@ChBaDe","@pmathon","@theobaldmarie","@Lnpagesy","@marclandre","@paoliniesther","@Feertchak","@JBLitzler","@GuillaumeErrard","@quentinperinel","@TristanQM","@mlbo","@constancejamet","@LoraTerrazas","@emiliegeffray","@Mathilde_Sd","@CaroPiquet","@DCanivez","@TIM_7375","@blandinelc","@ivanrioufol","@arthurberdah","@SarahLecoeuvre","@guillaume_gui","@DamienMercereau","@W_Chloe","@Assma_MD","@EugenieBastie","@HiTech_lexpress","@bcondominas","@Laurie_Z_","@jeanfrancgerard","@MathieuPagura","@BGUYF","@AlainPiffaretti","@AudreyKucinskas","@julienhory","@Pierrefalga","@TiphThuillier","@cdaniez","@LigerBaptiste","@D_Peras","@julie_dlb","@Fatiha_Temmouri","@julian2lamancha","@GaetaneDeljurie","@JulianMattei","@M_Vicuna","@DeBruynOlivier","@Nehed_Jendoubi","@antoine_grenapi","@ColonnaGen","@VictoriaGairin","@Clement_Lacombe","@TVigoureux","@MargauxObriot","@solinedelos","@RocheSabine","@dangerkens","@EdouardDutour","@MDondeyne","@DupuisNathalie1","@bouscarel","@Mathieu2jean","@Sophie_T_J","@laurentcalixte","@patrockwilliams","@PascaleKremer","@AlexJaquin","@LauraIsaaz","@cath_robin","@Del_Gautherin","@Isaduriez","@lucietuile","@AugeyBastien","@mcastagnet","@AminaKalache","@mvaudano","@CParrot","@ombelinetips","@_JoinLion","@BarbolosiRose","@ToiBruno1","@FloraClodic","@xjbdx","@ceci_est_un_handle_vraiment_long","@AlexiaEy","@Emjy_STARK","@elcoco01","@rabilebon","@pflovens_","@FabriceFrossard","@MorganeSERRES","@MarjolaineKoch","@edgarsnow","@SRNLF","@CChassigneux","@KerinecMoran","@NassiraELM","@NewsRicard","@Sandreene","@Emilezrt","@Pierre_Do","@Micode","@CColumelli","@DavidAbiker","@ClementBergantz","@benjaminrabier","@celinekallmann","@edwyplenel","@C_Barbier","@JJBourdin_RMC","@LaurenceFerrari","@aslapix","@IsaMillet","@MaximeSwitek","@tomjoubert","@jszanchi","@roqueeva","@XavierBiseul","@florencesantrot","@AntoineCrochet","@freeman59","@MaudeML","@philippe_gulpi","@mathieum76","@kiouari","@imanemoustakir","@BenedicteMallet","@Emilie_Brouze","@antoinebarret","@_nicolasbocquet","@remibuhagiar","@CourretB","@AymericRobert","@miraelmartins","@pmaniere","@jesuisraphk","@David_Ingram","@pcelerier","@technomedia","@Geraldinedauver","@ThierryLabro","@Newsdusud","@nrauline","@gbregeras","@SCouasnonBFM","@actualites_nrv","@dimitrimoulins","@oli_aura","@FabieChiche","@Vincent_Raimblt","@ChristophGreuet","@PAlbuchay","@MarrauddesGrot","@vtalmon","@cedric","@olivierfrigara","@Julien_Jay","@LydiaBerroyer","@Shuua","@datisdaz","@Steuph","@ameliecharnay","@Bruno_LesNums","@LelloucheNico","@CciliaDiQuinzio","@Elodie_C","@SylvRolland","@Kocobe","@FL_Debes","@jdupontcalbo","@GarciaVictor_","@NicoRichaud","@RHoueix","@simottel","@DamienLicata","@annabelle_L","@Lea_Lejeune","@axel_deb","@marin_eben","@ptiberry","@MatthieuDelach","@sandrinecassini","@benjaminferran","@ppgarcia75","@NotPatrick","@ivalerio","@FabienneSchmitt","@alexgoude","@JeromeColombain","@manhack","@Capucine_Cousin","@Fsorel","@oliviertesquet","@marjoriepaillon","@ginades","@PierreTran","@DelphineCuny","@reesmarc","@lauratenoudji","@ldupin","@carolinedescham","@Lucile_Quillet","@cgabizon","@Allocab","@epenser","@JAGventeprivee","@frwrds","@Laure__Bourdon","@Xavier75","@maximeverner","@s_jourdain","@LoriHelloc"]



question_1(mail_list)
question_2(mail_list)
question_3(mail_list)
question_4(mail_list)
question_5(mail_list)
question_6(mail_list)
question_7(mail_list)
question_8(mail_list)