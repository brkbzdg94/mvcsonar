À
HC:\Users\burak\Source\Repos\mvcsonar\SonarQube\App_Start\BundleConfig.cs
	namespace 	
	SonarQube
 
{ 
public 

class 
BundleConfig 
{ 
public		 
static		 
void		 
RegisterBundles		 *
(		* +
BundleCollection		+ ;
bundles		< C
)		C D
{

 	
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) ;
); <
.< =
Include= D
(D E
$str 7
)7 8
)8 9
;9 :
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str 4
)4 5
)5 6
;6 7
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str /
)/ 0
)0 1
;1 2
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str .
,. /
$str ,
), -
)- .
;. /
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( 7
)7 8
.8 9
Include9 @
(@ A
$str /
,/ 0
$str *
)* +
)+ ,
;, -
} 	
} 
} Ù
HC:\Users\burak\Source\Repos\mvcsonar\SonarQube\App_Start\FilterConfig.cs
	namespace 	
	SonarQube
 
{ 
public 

class 
FilterConfig 
{ 
public 
static 
void !
RegisterGlobalFilters 0
(0 1"
GlobalFilterCollection1 G
filtersH O
)O P
{		 	
filters

 
.

 
Add

 
(

 
new

  
HandleErrorAttribute

 0
(

0 1
)

1 2
)

2 3
;

3 4
} 	
} 
} ¥:
JC:\Users\burak\Source\Repos\mvcsonar\SonarQube\App_Start\IdentityConfig.cs
	namespace 	
	SonarQube
 
{ 
public 

class 
EmailService 
: #
IIdentityMessageService  7
{ 
public 
Task 
	SendAsync 
( 
IdentityMessage -
message. 5
)5 6
{ 	
return 
Task 
. 

FromResult "
(" #
$num# $
)$ %
;% &
} 	
} 
public 

class 

SmsService 
: #
IIdentityMessageService 5
{ 
public 
Task 
	SendAsync 
( 
IdentityMessage -
message. 5
)5 6
{ 	
return 
Task 
. 

FromResult "
(" #
$num# $
)$ %
;% &
}   	
}!! 
public$$ 

class$$ "
ApplicationUserManager$$ '
:$$( )
UserManager$$* 5
<$$5 6
ApplicationUser$$6 E
>$$E F
{%% 
public&& "
ApplicationUserManager&& %
(&&% &

IUserStore&&& 0
<&&0 1
ApplicationUser&&1 @
>&&@ A
store&&B G
)&&G H
:'' 
base'' 
('' 
store'' 
)'' 
{(( 	
})) 	
public++ 
static++ "
ApplicationUserManager++ ,
Create++- 3
(++3 4"
IdentityFactoryOptions++4 J
<++J K"
ApplicationUserManager++K a
>++a b
options++c j
,++j k
IOwinContext++l x
context	++y Ä
)
++Ä Å
{,, 	
var-- 
manager-- 
=-- 
new-- "
ApplicationUserManager-- 4
(--4 5
new--5 8
	UserStore--9 B
<--B C
ApplicationUser--C R
>--R S
(--S T
context--T [
.--[ \
Get--\ _
<--_ ` 
ApplicationDbContext--` t
>--t u
(--u v
)--v w
)--w x
)--x y
;--y z
manager// 
.// 
UserValidator// !
=//" #
new//$ '
UserValidator//( 5
<//5 6
ApplicationUser//6 E
>//E F
(//F G
manager//G N
)//N O
{00 *
AllowOnlyAlphanumericUserNames11 .
=11/ 0
false111 6
,116 7
RequireUniqueEmail22 "
=22# $
true22% )
}33 
;33 
manager66 
.66 
PasswordValidator66 %
=66& '
new66( +
PasswordValidator66, =
{77 
RequiredLength88 
=88  
$num88! "
,88" ##
RequireNonLetterOrDigit99 '
=99( )
true99* .
,99. /
RequireDigit:: 
=:: 
true:: #
,::# $
RequireLowercase;;  
=;;! "
true;;# '
,;;' (
RequireUppercase<<  
=<<! "
true<<# '
,<<' (
}== 
;== 
manager@@ 
.@@ '
UserLockoutEnabledByDefault@@ /
=@@0 1
true@@2 6
;@@6 7
managerAA 
.AA )
DefaultAccountLockoutTimeSpanAA 1
=AA2 3
TimeSpanAA4 <
.AA< =
FromMinutesAA= H
(AAH I
$numAAI J
)AAJ K
;AAK L
managerBB 
.BB 0
$MaxFailedAccessAttemptsBeforeLockoutBB 8
=BB9 :
$numBB; <
;BB< =
managerFF 
.FF %
RegisterTwoFactorProviderFF -
(FF- .
$strFF. :
,FF: ;
newFF< ?$
PhoneNumberTokenProviderFF@ X
<FFX Y
ApplicationUserFFY h
>FFh i
{GG 
MessageFormatHH 
=HH 
$strHH  ;
}II 
)II 
;II 
managerJJ 
.JJ %
RegisterTwoFactorProviderJJ -
(JJ- .
$strJJ. :
,JJ: ;
newJJ< ?
EmailTokenProviderJJ@ R
<JJR S
ApplicationUserJJS b
>JJb c
{KK 
SubjectLL 
=LL 
$strLL )
,LL) *

BodyFormatMM 
=MM 
$strMM 8
}NN 
)NN 
;NN 
managerOO 
.OO 
EmailServiceOO  
=OO! "
newOO# &
EmailServiceOO' 3
(OO3 4
)OO4 5
;OO5 6
managerPP 
.PP 

SmsServicePP 
=PP  
newPP! $

SmsServicePP% /
(PP/ 0
)PP0 1
;PP1 2
varQQ "
dataProtectionProviderQQ &
=QQ' (
optionsQQ) 0
.QQ0 1"
DataProtectionProviderQQ1 G
;QQG H
ifRR 
(RR "
dataProtectionProviderRR &
!=RR' )
nullRR* .
)RR. /
{SS 
managerTT 
.TT 
UserTokenProviderTT )
=TT* +
newUU &
DataProtectorTokenProviderUU 2
<UU2 3
ApplicationUserUU3 B
>UUB C
(UUC D"
dataProtectionProviderUUD Z
.UUZ [
CreateUU[ a
(UUa b
$strUUb t
)UUt u
)UUu v
;UUv w
}VV 
returnWW 
managerWW 
;WW 
}XX 	
}YY 
public\\ 

class\\ $
ApplicationSignInManager\\ )
:\\* +
SignInManager\\, 9
<\\9 :
ApplicationUser\\: I
,\\I J
string\\K Q
>\\Q R
{]] 
public^^ $
ApplicationSignInManager^^ '
(^^' ("
ApplicationUserManager^^( >
userManager^^? J
,^^J K"
IAuthenticationManager^^L b!
authenticationManager^^c x
)^^x y
:__ 
base__ 
(__ 
userManager__ 
,__ !
authenticationManager__  5
)__5 6
{`` 	
}aa 	
publiccc 
overridecc 
Taskcc 
<cc 
ClaimsIdentitycc +
>cc+ ,#
CreateUserIdentityAsynccc- D
(ccD E
ApplicationUserccE T
userccU Y
)ccY Z
{dd 	
returnee 
useree 
.ee %
GenerateUserIdentityAsyncee 1
(ee1 2
(ee2 3"
ApplicationUserManageree3 I
)eeI J
UserManagereeJ U
)eeU V
;eeV W
}ff 	
publichh 
statichh $
ApplicationSignInManagerhh .
Createhh/ 5
(hh5 6"
IdentityFactoryOptionshh6 L
<hhL M$
ApplicationSignInManagerhhM e
>hhe f
optionshhg n
,hhn o
IOwinContexthhp |
context	hh} Ñ
)
hhÑ Ö
{ii 	
returnjj 
newjj $
ApplicationSignInManagerjj /
(jj/ 0
contextjj0 7
.jj7 8
GetUserManagerjj8 F
<jjF G"
ApplicationUserManagerjjG ]
>jj] ^
(jj^ _
)jj_ `
,jj` a
contextjjb i
.jji j
Authenticationjjj x
)jjx y
;jjy z
}kk 	
}ll 
}mm “
GC:\Users\burak\Source\Repos\mvcsonar\SonarQube\App_Start\RouteConfig.cs
	namespace 	
	SonarQube
 
{		 
public

 

class

 
RouteConfig

 
{ 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{ 	
routes 
. 
IgnoreRoute 
( 
$str ;
); <
;< =
routes 
. 
MapRoute 
( 
name 
: 
$str 
,  
url 
: 
$str 1
,1 2
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- 3
,3 4
action5 ;
=< =
$str> E
,E F
idG I
=J K
UrlParameterL X
.X Y
OptionalY a
}b c
) 
; 
} 	
} 
} Ê
HC:\Users\burak\Source\Repos\mvcsonar\SonarQube\App_Start\Startup.Auth.cs
	namespace

 	
	SonarQube


 
{ 
public 

partial 
class 
Startup  
{ 
public 
void 
ConfigureAuth !
(! "
IAppBuilder" -
app. 1
)1 2
{ 	
app 
.  
CreatePerOwinContext $
($ % 
ApplicationDbContext% 9
.9 :
Create: @
)@ A
;A B
app 
.  
CreatePerOwinContext $
<$ %"
ApplicationUserManager% ;
>; <
(< ="
ApplicationUserManager= S
.S T
CreateT Z
)Z [
;[ \
app 
.  
CreatePerOwinContext $
<$ %$
ApplicationSignInManager% =
>= >
(> ?$
ApplicationSignInManager? W
.W X
CreateX ^
)^ _
;_ `
app 
. #
UseCookieAuthentication '
(' (
new( +'
CookieAuthenticationOptions, G
{ 
AuthenticationType "
=# $&
DefaultAuthenticationTypes% ?
.? @
ApplicationCookie@ Q
,Q R
	LoginPath 
= 
new 

PathString  *
(* +
$str+ ;
); <
,< =
Provider 
= 
new (
CookieAuthenticationProvider ;
{ 
OnValidateIdentity!! &
=!!' ("
SecurityStampValidator!!) ?
.!!? @
OnValidateIdentity!!@ R
<!!R S"
ApplicationUserManager!!S i
,!!i j
ApplicationUser!!k z
>!!z {
(!!{ |
validateInterval"" (
:""( )
TimeSpan""* 2
.""2 3
FromMinutes""3 >
(""> ?
$num""? A
)""A B
,""B C
regenerateIdentity## *
:##* +
(##, -
manager##- 4
,##4 5
user##6 :
)##: ;
=>##< >
user##? C
.##C D%
GenerateUserIdentityAsync##D ]
(##] ^
manager##^ e
)##e f
)##f g
}$$ 
}%% 
)%% 
;%% 
app&& 
.&& #
UseExternalSignInCookie&& '
(&&' (&
DefaultAuthenticationTypes&&( B
.&&B C
ExternalCookie&&C Q
)&&Q R
;&&R S
app)) 
.)) $
UseTwoFactorSignInCookie)) (
())( )&
DefaultAuthenticationTypes))) C
.))C D
TwoFactorCookie))D S
,))S T
TimeSpan))U ]
.))] ^
FromMinutes))^ i
())i j
$num))j k
)))k l
)))l m
;))m n
app.. 
... -
!UseTwoFactorRememberBrowserCookie.. 1
(..1 2&
DefaultAuthenticationTypes..2 L
...L M*
TwoFactorRememberBrowserCookie..M k
)..k l
;..l m
}BB 	
}CC 
}DD ∆ï
OC:\Users\burak\Source\Repos\mvcsonar\SonarQube\Controllers\AccountController.cs
	namespace 	
	SonarQube
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
public 

class 
AccountController "
:# $

Controller% /
{ 
private $
ApplicationSignInManager (
_signInManager) 7
;7 8
private "
ApplicationUserManager &
_userManager' 3
;3 4
public 
AccountController  
(  !
)! "
{ 	
} 	
public 
AccountController  
(  !"
ApplicationUserManager! 7
userManager8 C
,C D$
ApplicationSignInManagerE ]
signInManager^ k
)l m
{ 	
UserManager 
= 
userManager %
;% &
SignInManager 
= 
signInManager )
;) *
} 	
public $
ApplicationSignInManager '
SignInManager( 5
{   	
get!! 
{"" 
return## 
_signInManager## %
??##& (
HttpContext##) 4
.##4 5
GetOwinContext##5 C
(##C D
)##D E
.##E F
Get##F I
<##I J$
ApplicationSignInManager##J b
>##b c
(##c d
)##d e
;##e f
}$$ 
private%% 
set%% 
{&& 
_signInManager'' 
=''  
value''! &
;''& '
}(( 
})) 	
public++ "
ApplicationUserManager++ %
UserManager++& 1
{,, 	
get-- 
{.. 
return// 
_userManager// #
??//$ &
HttpContext//' 2
.//2 3
GetOwinContext//3 A
(//A B
)//B C
.//C D
GetUserManager//D R
<//R S"
ApplicationUserManager//S i
>//i j
(//j k
)//k l
;//l m
}00 
private11 
set11 
{22 
_userManager33 
=33 
value33 $
;33$ %
}44 
}55 	
[99 	
AllowAnonymous99	 
]99 
public:: 
ActionResult:: 
Login:: !
(::! "
string::" (
	returnUrl::) 2
)::2 3
{;; 	
ViewBag<< 
.<< 
	ReturnUrl<< 
=<< 
	returnUrl<<  )
;<<) *
return== 
View== 
(== 
)== 
;== 
}>> 	
[BB 	
HttpPostBB	 
]BB 
[CC 	
AllowAnonymousCC	 
]CC 
[DD 	$
ValidateAntiForgeryTokenDD	 !
]DD! "
publicEE 
asyncEE 
TaskEE 
<EE 
ActionResultEE &
>EE& '
LoginEE( -
(EE- .
LoginViewModelEE. <
modelEE= B
,EEB C
stringEED J
	returnUrlEEK T
)EET U
{FF 	
ifGG 
(GG 
!GG 

ModelStateGG 
.GG 
IsValidGG #
)GG# $
{HH 
returnII 
ViewII 
(II 
modelII !
)II! "
;II" #
}JJ 
varNN 
resultNN 
=NN 
awaitNN 
SignInManagerNN ,
.NN, -
PasswordSignInAsyncNN- @
(NN@ A
modelNNA F
.NNF G
EmailNNG L
,NNL M
modelNNN S
.NNS T
PasswordNNT \
,NN\ ]
modelNN^ c
.NNc d

RememberMeNNd n
,NNn o
shouldLockoutNNp }
:NN} ~
false	NN Ñ
)
NNÑ Ö
;
NNÖ Ü
switchOO 
(OO 
resultOO 
)OO 
{PP 
caseQQ 
SignInStatusQQ !
.QQ! "
SuccessQQ" )
:QQ) *
returnRR 
RedirectToLocalRR *
(RR* +
	returnUrlRR+ 4
)RR4 5
;RR5 6
caseSS 
SignInStatusSS !
.SS! "
	LockedOutSS" +
:SS+ ,
returnTT 
ViewTT 
(TT  
$strTT  )
)TT) *
;TT* +
caseUU 
SignInStatusUU !
.UU! " 
RequiresVerificationUU" 6
:UU6 7
returnVV 
RedirectToActionVV +
(VV+ ,
$strVV, 6
,VV6 7
newVV8 ;
{VV< =
	ReturnUrlVV> G
=VVH I
	returnUrlVVJ S
,VVS T

RememberMeVVU _
=VV` a
modelVVb g
.VVg h

RememberMeVVh r
}VVs t
)VVt u
;VVu v
caseWW 
SignInStatusWW !
.WW! "
FailureWW" )
:WW) *
defaultXX 
:XX 

ModelStateYY 
.YY 
AddModelErrorYY ,
(YY, -
$strYY- /
,YY/ 0
$strYY1 I
)YYI J
;YYJ K
returnZZ 
ViewZZ 
(ZZ  
modelZZ  %
)ZZ% &
;ZZ& '
}[[ 
}\\ 	
[`` 	
AllowAnonymous``	 
]`` 
publicaa 
asyncaa 
Taskaa 
<aa 
ActionResultaa &
>aa& '

VerifyCodeaa( 2
(aa2 3
stringaa3 9
provideraa: B
,aaB C
stringaaD J
	returnUrlaaK T
,aaT U
boolaaV Z

rememberMeaa[ e
)aae f
{bb 	
ifdd 
(dd 
!dd 
awaitdd 
SignInManagerdd $
.dd$ % 
HasBeenVerifiedAsyncdd% 9
(dd9 :
)dd: ;
)dd; <
{ee 
returnff 
Viewff 
(ff 
$strff #
)ff# $
;ff$ %
}gg 
returnhh 
Viewhh 
(hh 
newhh 
VerifyCodeViewModelhh /
{hh0 1
Providerhh2 :
=hh; <
providerhh= E
,hhE F
	ReturnUrlhhG P
=hhQ R
	returnUrlhhS \
,hh\ ]

RememberMehh^ h
=hhi j

rememberMehhk u
}hhv w
)hhw x
;hhx y
}ii 	
[mm 	
HttpPostmm	 
]mm 
[nn 	
AllowAnonymousnn	 
]nn 
[oo 	$
ValidateAntiForgeryTokenoo	 !
]oo! "
publicpp 
asyncpp 
Taskpp 
<pp 
ActionResultpp &
>pp& '

VerifyCodepp( 2
(pp2 3
VerifyCodeViewModelpp3 F
modelppG L
)ppL M
{qq 	
ifrr 
(rr 
!rr 

ModelStaterr 
.rr 
IsValidrr #
)rr# $
{ss 
returntt 
Viewtt 
(tt 
modeltt !
)tt! "
;tt" #
}uu 
var{{ 
result{{ 
={{ 
await{{ 
SignInManager{{ ,
.{{, - 
TwoFactorSignInAsync{{- A
({{A B
model{{B G
.{{G H
Provider{{H P
,{{P Q
model{{R W
.{{W X
Code{{X \
,{{\ ]
isPersistent{{^ j
:{{j k
model{{m r
.{{r s

RememberMe{{s }
,{{} ~
rememberBrowser	{{ é
:
{{é è
model
{{ê ï
.
{{ï ñ
RememberBrowser
{{ñ •
)
{{• ¶
;
{{¶ ß
switch|| 
(|| 
result|| 
)|| 
{}} 
case~~ 
SignInStatus~~ !
.~~! "
Success~~" )
:~~) *
return 
RedirectToLocal *
(* +
model+ 0
.0 1
	ReturnUrl1 :
): ;
;; <
case
ÄÄ 
SignInStatus
ÄÄ !
.
ÄÄ! "
	LockedOut
ÄÄ" +
:
ÄÄ+ ,
return
ÅÅ 
View
ÅÅ 
(
ÅÅ  
$str
ÅÅ  )
)
ÅÅ) *
;
ÅÅ* +
case
ÇÇ 
SignInStatus
ÇÇ !
.
ÇÇ! "
Failure
ÇÇ" )
:
ÇÇ) *
default
ÉÉ 
:
ÉÉ 

ModelState
ÑÑ 
.
ÑÑ 
AddModelError
ÑÑ ,
(
ÑÑ, -
$str
ÑÑ- /
,
ÑÑ/ 0
$str
ÑÑ1 @
)
ÑÑ@ A
;
ÑÑA B
return
ÖÖ 
View
ÖÖ 
(
ÖÖ  
model
ÖÖ  %
)
ÖÖ% &
;
ÖÖ& '
}
ÜÜ 
}
áá 	
[
ãã 	
AllowAnonymous
ãã	 
]
ãã 
public
åå 
ActionResult
åå 
Register
åå $
(
åå$ %
)
åå% &
{
çç 	
return
éé 
View
éé 
(
éé 
)
éé 
;
éé 
}
èè 	
[
ìì 	
HttpPost
ìì	 
]
ìì 
[
îî 	
AllowAnonymous
îî	 
]
îî 
[
ïï 	&
ValidateAntiForgeryToken
ïï	 !
]
ïï! "
public
ññ 
async
ññ 
Task
ññ 
<
ññ 
ActionResult
ññ &
>
ññ& '
Register
ññ( 0
(
ññ0 1
RegisterViewModel
ññ1 B
model
ññC H
)
ññH I
{
óó 	
if
òò 
(
òò 

ModelState
òò 
.
òò 
IsValid
òò "
)
òò" #
{
ôô 
var
öö 
user
öö 
=
öö 
new
öö 
ApplicationUser
öö .
{
öö/ 0
UserName
öö1 9
=
öö: ;
model
öö< A
.
ööA B
Email
ööB G
,
ööG H
Email
ööI N
=
ööO P
model
ööQ V
.
ööV W
Email
ööW \
}
öö] ^
;
öö^ _
var
õõ 
result
õõ 
=
õõ 
await
õõ "
UserManager
õõ# .
.
õõ. /
CreateAsync
õõ/ :
(
õõ: ;
user
õõ; ?
,
õõ? @
model
õõA F
.
õõF G
Password
õõG O
)
õõO P
;
õõP Q
if
úú 
(
úú 
result
úú 
.
úú 
	Succeeded
úú $
)
úú$ %
{
ùù 
await
ûû 
SignInManager
ûû '
.
ûû' (
SignInAsync
ûû( 3
(
ûû3 4
user
ûû4 8
,
ûû8 9
isPersistent
ûû: F
:
ûûF G
false
ûûG L
,
ûûL M
rememberBrowser
ûûN ]
:
ûû] ^
false
ûû^ c
)
ûûc d
;
ûûd e
return
¶¶ 
RedirectToAction
¶¶ +
(
¶¶+ ,
$str
¶¶, 3
,
¶¶3 4
$str
¶¶5 ;
)
¶¶; <
;
¶¶< =
}
ßß 
	AddErrors
®® 
(
®® 
result
®®  
)
®®  !
;
®®! "
}
©© 
return
¨¨ 
View
¨¨ 
(
¨¨ 
model
¨¨ 
)
¨¨ 
;
¨¨ 
}
≠≠ 	
[
±± 	
AllowAnonymous
±±	 
]
±± 
public
≤≤ 
async
≤≤ 
Task
≤≤ 
<
≤≤ 
ActionResult
≤≤ &
>
≤≤& '
ConfirmEmail
≤≤( 4
(
≤≤4 5
string
≤≤5 ;
userId
≤≤< B
,
≤≤B C
string
≤≤D J
code
≤≤K O
)
≤≤O P
{
≥≥ 	
if
¥¥ 
(
¥¥ 
userId
¥¥ 
==
¥¥ 
null
¥¥ 
||
¥¥ !
code
¥¥" &
==
¥¥' )
null
¥¥* .
)
¥¥. /
{
µµ 
return
∂∂ 
View
∂∂ 
(
∂∂ 
$str
∂∂ #
)
∂∂# $
;
∂∂$ %
}
∑∑ 
var
∏∏ 
result
∏∏ 
=
∏∏ 
await
∏∏ 
UserManager
∏∏ *
.
∏∏* +
ConfirmEmailAsync
∏∏+ <
(
∏∏< =
userId
∏∏= C
,
∏∏C D
code
∏∏E I
)
∏∏I J
;
∏∏J K
return
ππ 
View
ππ 
(
ππ 
result
ππ 
.
ππ 
	Succeeded
ππ (
?
ππ) *
$str
ππ+ 9
:
ππ: ;
$str
ππ< C
)
ππC D
;
ππD E
}
∫∫ 	
[
ææ 	
AllowAnonymous
ææ	 
]
ææ 
public
øø 
ActionResult
øø 
ForgotPassword
øø *
(
øø* +
)
øø+ ,
{
¿¿ 	
return
¡¡ 
View
¡¡ 
(
¡¡ 
)
¡¡ 
;
¡¡ 
}
¬¬ 	
[
∆∆ 	
HttpPost
∆∆	 
]
∆∆ 
[
«« 	
AllowAnonymous
««	 
]
«« 
[
»» 	&
ValidateAntiForgeryToken
»»	 !
]
»»! "
public
…… 
async
…… 
Task
…… 
<
…… 
ActionResult
…… &
>
……& '
ForgotPassword
……( 6
(
……6 7%
ForgotPasswordViewModel
……7 N
model
……O T
)
……T U
{
   	
if
ÀÀ 
(
ÀÀ 

ModelState
ÀÀ 
.
ÀÀ 
IsValid
ÀÀ "
)
ÀÀ" #
{
ÃÃ 
var
ÕÕ 
user
ÕÕ 
=
ÕÕ 
await
ÕÕ  
UserManager
ÕÕ! ,
.
ÕÕ, -
FindByNameAsync
ÕÕ- <
(
ÕÕ< =
model
ÕÕ= B
.
ÕÕB C
Email
ÕÕC H
)
ÕÕH I
;
ÕÕI J
if
ŒŒ 
(
ŒŒ 
user
ŒŒ 
==
ŒŒ 
null
ŒŒ  
||
ŒŒ! #
!
ŒŒ$ %
(
ŒŒ% &
await
ŒŒ& +
UserManager
ŒŒ, 7
.
ŒŒ7 8#
IsEmailConfirmedAsync
ŒŒ8 M
(
ŒŒM N
user
ŒŒN R
.
ŒŒR S
Id
ŒŒS U
)
ŒŒU V
)
ŒŒV W
)
ŒŒW X
{
œœ 
return
—— 
View
—— 
(
——  
$str
——  <
)
——< =
;
——= >
}
““ 
}
⁄⁄ 
return
›› 
View
›› 
(
›› 
model
›› 
)
›› 
;
›› 
}
ﬁﬁ 	
[
‚‚ 	
AllowAnonymous
‚‚	 
]
‚‚ 
public
„„ 
ActionResult
„„ (
ForgotPasswordConfirmation
„„ 6
(
„„6 7
)
„„7 8
{
‰‰ 	
return
ÂÂ 
View
ÂÂ 
(
ÂÂ 
)
ÂÂ 
;
ÂÂ 
}
ÊÊ 	
[
ÍÍ 	
AllowAnonymous
ÍÍ	 
]
ÍÍ 
public
ÎÎ 
ActionResult
ÎÎ 
ResetPassword
ÎÎ )
(
ÎÎ) *
string
ÎÎ* 0
code
ÎÎ1 5
)
ÎÎ5 6
{
ÏÏ 	
return
ÌÌ 
code
ÌÌ 
==
ÌÌ 
null
ÌÌ 
?
ÌÌ  !
View
ÌÌ" &
(
ÌÌ& '
$str
ÌÌ' .
)
ÌÌ. /
:
ÌÌ0 1
View
ÌÌ2 6
(
ÌÌ6 7
)
ÌÌ7 8
;
ÌÌ8 9
}
ÓÓ 	
[
ÚÚ 	
HttpPost
ÚÚ	 
]
ÚÚ 
[
ÛÛ 	
AllowAnonymous
ÛÛ	 
]
ÛÛ 
[
ÙÙ 	&
ValidateAntiForgeryToken
ÙÙ	 !
]
ÙÙ! "
public
ıı 
async
ıı 
Task
ıı 
<
ıı 
ActionResult
ıı &
>
ıı& '
ResetPassword
ıı( 5
(
ıı5 6$
ResetPasswordViewModel
ıı6 L
model
ııM R
)
ııR S
{
ˆˆ 	
if
˜˜ 
(
˜˜ 
!
˜˜ 

ModelState
˜˜ 
.
˜˜ 
IsValid
˜˜ #
)
˜˜# $
{
¯¯ 
return
˘˘ 
View
˘˘ 
(
˘˘ 
model
˘˘ !
)
˘˘! "
;
˘˘" #
}
˙˙ 
var
˚˚ 
user
˚˚ 
=
˚˚ 
await
˚˚ 
UserManager
˚˚ (
.
˚˚( )
FindByNameAsync
˚˚) 8
(
˚˚8 9
model
˚˚9 >
.
˚˚> ?
Email
˚˚? D
)
˚˚D E
;
˚˚E F
if
¸¸ 
(
¸¸ 
user
¸¸ 
==
¸¸ 
null
¸¸ 
)
¸¸ 
{
˝˝ 
return
ˇˇ 
RedirectToAction
ˇˇ '
(
ˇˇ' (
$str
ˇˇ( C
,
ˇˇC D
$str
ˇˇE N
)
ˇˇN O
;
ˇˇO P
}
ÄÄ 
var
ÅÅ 
result
ÅÅ 
=
ÅÅ 
await
ÅÅ 
UserManager
ÅÅ *
.
ÅÅ* + 
ResetPasswordAsync
ÅÅ+ =
(
ÅÅ= >
user
ÅÅ> B
.
ÅÅB C
Id
ÅÅC E
,
ÅÅE F
model
ÅÅG L
.
ÅÅL M
Code
ÅÅM Q
,
ÅÅQ R
model
ÅÅS X
.
ÅÅX Y
Password
ÅÅY a
)
ÅÅa b
;
ÅÅb c
if
ÇÇ 
(
ÇÇ 
result
ÇÇ 
.
ÇÇ 
	Succeeded
ÇÇ  
)
ÇÇ  !
{
ÉÉ 
return
ÑÑ 
RedirectToAction
ÑÑ '
(
ÑÑ' (
$str
ÑÑ( C
,
ÑÑC D
$str
ÑÑE N
)
ÑÑN O
;
ÑÑO P
}
ÖÖ 
	AddErrors
ÜÜ 
(
ÜÜ 
result
ÜÜ 
)
ÜÜ 
;
ÜÜ 
return
áá 
View
áá 
(
áá 
)
áá 
;
áá 
}
àà 	
[
åå 	
AllowAnonymous
åå	 
]
åå 
public
çç 
ActionResult
çç '
ResetPasswordConfirmation
çç 5
(
çç5 6
)
çç6 7
{
éé 	
return
èè 
View
èè 
(
èè 
)
èè 
;
èè 
}
êê 	
[
îî 	
HttpPost
îî	 
]
îî 
[
ïï 	
AllowAnonymous
ïï	 
]
ïï 
[
ññ 	&
ValidateAntiForgeryToken
ññ	 !
]
ññ! "
public
óó 
ActionResult
óó 
ExternalLogin
óó )
(
óó) *
string
óó* 0
provider
óó1 9
,
óó9 :
string
óó; A
	returnUrl
óóB K
)
óóK L
{
òò 	
return
öö 
new
öö 
ChallengeResult
öö &
(
öö& '
provider
öö' /
,
öö/ 0
Url
öö1 4
.
öö4 5
Action
öö5 ;
(
öö; <
$str
öö< S
,
ööS T
$str
ööU ^
,
öö^ _
new
öö` c
{
ööd e
	ReturnUrl
ööf o
=
ööp q
	returnUrl
öör {
}
öö| }
)
öö} ~
)
öö~ 
;öö Ä
}
õõ 	
[
üü 	
AllowAnonymous
üü	 
]
üü 
public
†† 
async
†† 
Task
†† 
<
†† 
ActionResult
†† &
>
††& '
SendCode
††( 0
(
††0 1
string
††1 7
	returnUrl
††8 A
,
††A B
bool
††C G

rememberMe
††H R
)
††R S
{
°° 	
var
¢¢ 
userId
¢¢ 
=
¢¢ 
await
¢¢ 
SignInManager
¢¢ ,
.
¢¢, -$
GetVerifiedUserIdAsync
¢¢- C
(
¢¢C D
)
¢¢D E
;
¢¢E F
if
££ 
(
££ 
userId
££ 
==
££ 
null
££ 
)
££ 
{
§§ 
return
•• 
View
•• 
(
•• 
$str
•• #
)
••# $
;
••$ %
}
¶¶ 
var
ßß 
userFactors
ßß 
=
ßß 
await
ßß #
UserManager
ßß$ /
.
ßß/ 0-
GetValidTwoFactorProvidersAsync
ßß0 O
(
ßßO P
userId
ßßP V
)
ßßV W
;
ßßW X
var
®® 
factorOptions
®® 
=
®® 
userFactors
®®  +
.
®®+ ,
Select
®®, 2
(
®®2 3
purpose
®®3 :
=>
®®; =
new
®®> A
SelectListItem
®®B P
{
®®Q R
Text
®®S W
=
®®X Y
purpose
®®Z a
,
®®a b
Value
®®c h
=
®®i j
purpose
®®k r
}
®®s t
)
®®t u
.
®®u v
ToList
®®v |
(
®®| }
)
®®} ~
;
®®~ 
return
©© 
View
©© 
(
©© 
new
©© 
SendCodeViewModel
©© -
{
©©. /
	Providers
©©0 9
=
©©: ;
factorOptions
©©< I
,
©©I J
	ReturnUrl
©©K T
=
©©U V
	returnUrl
©©W `
,
©©` a

RememberMe
©©b l
=
©©m n

rememberMe
©©o y
}
©©z {
)
©©{ |
;
©©| }
}
™™ 	
[
ÆÆ 	
HttpPost
ÆÆ	 
]
ÆÆ 
[
ØØ 	
AllowAnonymous
ØØ	 
]
ØØ 
[
∞∞ 	&
ValidateAntiForgeryToken
∞∞	 !
]
∞∞! "
public
±± 
async
±± 
Task
±± 
<
±± 
ActionResult
±± &
>
±±& '
SendCode
±±( 0
(
±±0 1
SendCodeViewModel
±±1 B
model
±±C H
)
±±H I
{
≤≤ 	
if
≥≥ 
(
≥≥ 
!
≥≥ 

ModelState
≥≥ 
.
≥≥ 
IsValid
≥≥ #
)
≥≥# $
{
¥¥ 
return
µµ 
View
µµ 
(
µµ 
)
µµ 
;
µµ 
}
∂∂ 
if
ππ 
(
ππ 
!
ππ 
await
ππ 
SignInManager
ππ $
.
ππ$ %$
SendTwoFactorCodeAsync
ππ% ;
(
ππ; <
model
ππ< A
.
ππA B
SelectedProvider
ππB R
)
ππR S
)
ππS T
{
∫∫ 
return
ªª 
View
ªª 
(
ªª 
$str
ªª #
)
ªª# $
;
ªª$ %
}
ºº 
return
ΩΩ 
RedirectToAction
ΩΩ #
(
ΩΩ# $
$str
ΩΩ$ 0
,
ΩΩ0 1
new
ΩΩ2 5
{
ΩΩ6 7
Provider
ΩΩ8 @
=
ΩΩA B
model
ΩΩC H
.
ΩΩH I
SelectedProvider
ΩΩI Y
,
ΩΩY Z
	ReturnUrl
ΩΩ[ d
=
ΩΩe f
model
ΩΩg l
.
ΩΩl m
	ReturnUrl
ΩΩm v
,
ΩΩv w

RememberMeΩΩx Ç
=ΩΩÉ Ñ
modelΩΩÖ ä
.ΩΩä ã

RememberMeΩΩã ï
}ΩΩñ ó
)ΩΩó ò
;ΩΩò ô
}
ææ 	
[
¬¬ 	
AllowAnonymous
¬¬	 
]
¬¬ 
public
√√ 
async
√√ 
Task
√√ 
<
√√ 
ActionResult
√√ &
>
√√& '#
ExternalLoginCallback
√√( =
(
√√= >
string
√√> D
	returnUrl
√√E N
)
√√N O
{
ƒƒ 	
var
≈≈ 
	loginInfo
≈≈ 
=
≈≈ 
await
≈≈ !#
AuthenticationManager
≈≈" 7
.
≈≈7 8'
GetExternalLoginInfoAsync
≈≈8 Q
(
≈≈Q R
)
≈≈R S
;
≈≈S T
if
∆∆ 
(
∆∆ 
	loginInfo
∆∆ 
==
∆∆ 
null
∆∆ !
)
∆∆! "
{
«« 
return
»» 
RedirectToAction
»» '
(
»»' (
$str
»»( /
)
»»/ 0
;
»»0 1
}
…… 
var
ÃÃ 
result
ÃÃ 
=
ÃÃ 
await
ÃÃ 
SignInManager
ÃÃ ,
.
ÃÃ, -!
ExternalSignInAsync
ÃÃ- @
(
ÃÃ@ A
	loginInfo
ÃÃA J
,
ÃÃJ K
isPersistent
ÃÃL X
:
ÃÃX Y
false
ÃÃZ _
)
ÃÃ_ `
;
ÃÃ` a
switch
ÕÕ 
(
ÕÕ 
result
ÕÕ 
)
ÕÕ 
{
ŒŒ 
case
œœ 
SignInStatus
œœ !
.
œœ! "
Success
œœ" )
:
œœ) *
return
–– 
RedirectToLocal
–– *
(
––* +
	returnUrl
––+ 4
)
––4 5
;
––5 6
case
—— 
SignInStatus
—— !
.
——! "
	LockedOut
——" +
:
——+ ,
return
““ 
View
““ 
(
““  
$str
““  )
)
““) *
;
““* +
case
”” 
SignInStatus
”” !
.
””! ""
RequiresVerification
””" 6
:
””6 7
return
‘‘ 
RedirectToAction
‘‘ +
(
‘‘+ ,
$str
‘‘, 6
,
‘‘6 7
new
‘‘8 ;
{
‘‘< =
	ReturnUrl
‘‘> G
=
‘‘H I
	returnUrl
‘‘J S
,
‘‘S T

RememberMe
‘‘U _
=
‘‘` a
false
‘‘b g
}
‘‘h i
)
‘‘i j
;
‘‘j k
case
’’ 
SignInStatus
’’ !
.
’’! "
Failure
’’" )
:
’’) *
default
÷÷ 
:
÷÷ 
ViewBag
ÿÿ 
.
ÿÿ 
	ReturnUrl
ÿÿ %
=
ÿÿ& '
	returnUrl
ÿÿ( 1
;
ÿÿ1 2
ViewBag
ŸŸ 
.
ŸŸ 
LoginProvider
ŸŸ )
=
ŸŸ* +
	loginInfo
ŸŸ, 5
.
ŸŸ5 6
Login
ŸŸ6 ;
.
ŸŸ; <
LoginProvider
ŸŸ< I
;
ŸŸI J
return
⁄⁄ 
View
⁄⁄ 
(
⁄⁄  
$str
⁄⁄  ;
,
⁄⁄; <
new
⁄⁄= @0
"ExternalLoginConfirmationViewModel
⁄⁄A c
{
⁄⁄d e
Email
⁄⁄f k
=
⁄⁄l m
	loginInfo
⁄⁄n w
.
⁄⁄w x
Email
⁄⁄x }
}
⁄⁄~ 
)⁄⁄ Ä
;⁄⁄Ä Å
}
€€ 
}
‹‹ 	
[
‡‡ 	
HttpPost
‡‡	 
]
‡‡ 
[
·· 	
AllowAnonymous
··	 
]
·· 
[
‚‚ 	&
ValidateAntiForgeryToken
‚‚	 !
]
‚‚! "
public
„„ 
async
„„ 
Task
„„ 
<
„„ 
ActionResult
„„ &
>
„„& ''
ExternalLoginConfirmation
„„( A
(
„„A B0
"ExternalLoginConfirmationViewModel
„„B d
model
„„e j
,
„„j k
string
„„l r
	returnUrl
„„s |
)
„„| }
{
‰‰ 	
if
ÂÂ 
(
ÂÂ 
User
ÂÂ 
.
ÂÂ 
Identity
ÂÂ 
.
ÂÂ 
IsAuthenticated
ÂÂ -
)
ÂÂ- .
{
ÊÊ 
return
ÁÁ 
RedirectToAction
ÁÁ '
(
ÁÁ' (
$str
ÁÁ( /
,
ÁÁ/ 0
$str
ÁÁ1 9
)
ÁÁ9 :
;
ÁÁ: ;
}
ËË 
if
ÍÍ 
(
ÍÍ 

ModelState
ÍÍ 
.
ÍÍ 
IsValid
ÍÍ "
)
ÍÍ" #
{
ÎÎ 
var
ÌÌ 
info
ÌÌ 
=
ÌÌ 
await
ÌÌ  #
AuthenticationManager
ÌÌ! 6
.
ÌÌ6 7'
GetExternalLoginInfoAsync
ÌÌ7 P
(
ÌÌP Q
)
ÌÌQ R
;
ÌÌR S
if
ÓÓ 
(
ÓÓ 
info
ÓÓ 
==
ÓÓ 
null
ÓÓ  
)
ÓÓ  !
{
ÔÔ 
return
 
View
 
(
  
$str
  6
)
6 7
;
7 8
}
ÒÒ 
var
ÚÚ 
user
ÚÚ 
=
ÚÚ 
new
ÚÚ 
ApplicationUser
ÚÚ .
{
ÚÚ/ 0
UserName
ÚÚ1 9
=
ÚÚ: ;
model
ÚÚ< A
.
ÚÚA B
Email
ÚÚB G
,
ÚÚG H
Email
ÚÚI N
=
ÚÚO P
model
ÚÚQ V
.
ÚÚV W
Email
ÚÚW \
}
ÚÚ] ^
;
ÚÚ^ _
var
ÛÛ 
result
ÛÛ 
=
ÛÛ 
await
ÛÛ "
UserManager
ÛÛ# .
.
ÛÛ. /
CreateAsync
ÛÛ/ :
(
ÛÛ: ;
user
ÛÛ; ?
)
ÛÛ? @
;
ÛÛ@ A
if
ÙÙ 
(
ÙÙ 
result
ÙÙ 
.
ÙÙ 
	Succeeded
ÙÙ $
)
ÙÙ$ %
{
ıı 
result
ˆˆ 
=
ˆˆ 
await
ˆˆ "
UserManager
ˆˆ# .
.
ˆˆ. /
AddLoginAsync
ˆˆ/ <
(
ˆˆ< =
user
ˆˆ= A
.
ˆˆA B
Id
ˆˆB D
,
ˆˆD E
info
ˆˆF J
.
ˆˆJ K
Login
ˆˆK P
)
ˆˆP Q
;
ˆˆQ R
if
˜˜ 
(
˜˜ 
result
˜˜ 
.
˜˜ 
	Succeeded
˜˜ (
)
˜˜( )
{
¯¯ 
await
˘˘ 
SignInManager
˘˘ +
.
˘˘+ ,
SignInAsync
˘˘, 7
(
˘˘7 8
user
˘˘8 <
,
˘˘< =
isPersistent
˘˘> J
:
˘˘J K
false
˘˘L Q
,
˘˘Q R
rememberBrowser
˘˘S b
:
˘˘b c
false
˘˘d i
)
˘˘i j
;
˘˘j k
return
˙˙ 
RedirectToLocal
˙˙ .
(
˙˙. /
	returnUrl
˙˙/ 8
)
˙˙8 9
;
˙˙9 :
}
˚˚ 
}
¸¸ 
	AddErrors
˝˝ 
(
˝˝ 
result
˝˝  
)
˝˝  !
;
˝˝! "
}
˛˛ 
ViewBag
ÄÄ 
.
ÄÄ 
	ReturnUrl
ÄÄ 
=
ÄÄ 
	returnUrl
ÄÄ  )
;
ÄÄ) *
return
ÅÅ 
View
ÅÅ 
(
ÅÅ 
model
ÅÅ 
)
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
[
ÜÜ 	
HttpPost
ÜÜ	 
]
ÜÜ 
[
áá 	&
ValidateAntiForgeryToken
áá	 !
]
áá! "
public
àà 
ActionResult
àà 
LogOff
àà "
(
àà" #
)
àà# $
{
ââ 	#
AuthenticationManager
ää !
.
ää! "
SignOut
ää" )
(
ää) *(
DefaultAuthenticationTypes
ää* D
.
ääD E
ApplicationCookie
ääE V
)
ääV W
;
ääW X
return
ãã 
RedirectToAction
ãã #
(
ãã# $
$str
ãã$ +
,
ãã+ ,
$str
ãã- 3
)
ãã3 4
;
ãã4 5
}
åå 	
[
êê 	
AllowAnonymous
êê	 
]
êê 
public
ëë 
ActionResult
ëë "
ExternalLoginFailure
ëë 0
(
ëë0 1
)
ëë1 2
{
íí 	
return
ìì 
View
ìì 
(
ìì 
)
ìì 
;
ìì 
}
îî 	
	protected
ññ 
override
ññ 
void
ññ 
Dispose
ññ  '
(
ññ' (
bool
ññ( ,
	disposing
ññ- 6
)
ññ6 7
{
óó 	
if
òò 
(
òò 
	disposing
òò 
)
òò 
{
ôô 
if
öö 
(
öö 
_userManager
öö  
!=
öö! #
null
öö$ (
)
öö( )
{
õõ 
_userManager
úú  
.
úú  !
Dispose
úú! (
(
úú( )
)
úú) *
;
úú* +
_userManager
ùù  
=
ùù! "
null
ùù# '
;
ùù' (
}
ûû 
if
†† 
(
†† 
_signInManager
†† "
!=
††# %
null
††& *
)
††* +
{
°° 
_signInManager
¢¢ "
.
¢¢" #
Dispose
¢¢# *
(
¢¢* +
)
¢¢+ ,
;
¢¢, -
_signInManager
££ "
=
££# $
null
££% )
;
££) *
}
§§ 
}
•• 
base
ßß 
.
ßß 
Dispose
ßß 
(
ßß 
	disposing
ßß "
)
ßß" #
;
ßß# $
}
®® 	
private
¨¨ 
const
¨¨ 
string
¨¨ 
XsrfKey
¨¨ $
=
¨¨% &
$str
¨¨' /
;
¨¨/ 0
private
ÆÆ $
IAuthenticationManager
ÆÆ &#
AuthenticationManager
ÆÆ' <
{
ØØ 	
get
∞∞ 
{
±± 
return
≤≤ 
HttpContext
≤≤ "
.
≤≤" #
GetOwinContext
≤≤# 1
(
≤≤1 2
)
≤≤2 3
.
≤≤3 4
Authentication
≤≤4 B
;
≤≤B C
}
≥≥ 
}
¥¥ 	
private
∂∂ 
void
∂∂ 
	AddErrors
∂∂ 
(
∂∂ 
IdentityResult
∂∂ -
result
∂∂. 4
)
∂∂4 5
{
∑∑ 	
foreach
∏∏ 
(
∏∏ 
var
∏∏ 
error
∏∏ 
in
∏∏ !
result
∏∏" (
.
∏∏( )
Errors
∏∏) /
)
∏∏/ 0
{
ππ 

ModelState
∫∫ 
.
∫∫ 
AddModelError
∫∫ (
(
∫∫( )
$str
∫∫) +
,
∫∫+ ,
error
∫∫- 2
)
∫∫2 3
;
∫∫3 4
}
ªª 
}
ºº 	
private
ææ 
ActionResult
ææ 
RedirectToLocal
ææ ,
(
ææ, -
string
ææ- 3
	returnUrl
ææ4 =
)
ææ= >
{
øø 	
if
¿¿ 
(
¿¿ 
Url
¿¿ 
.
¿¿ 

IsLocalUrl
¿¿ 
(
¿¿ 
	returnUrl
¿¿ (
)
¿¿( )
)
¿¿) *
{
¡¡ 
return
¬¬ 
Redirect
¬¬ 
(
¬¬  
	returnUrl
¬¬  )
)
¬¬) *
;
¬¬* +
}
√√ 
return
ƒƒ 
RedirectToAction
ƒƒ #
(
ƒƒ# $
$str
ƒƒ$ +
,
ƒƒ+ ,
$str
ƒƒ- 3
)
ƒƒ3 4
;
ƒƒ4 5
}
≈≈ 	
internal
«« 
class
«« 
ChallengeResult
«« &
:
««' ($
HttpUnauthorizedResult
««) ?
{
»» 	
public
…… 
ChallengeResult
…… "
(
……" #
string
……# )
provider
……* 2
,
……2 3
string
……4 :
redirectUri
……; F
)
……F G
:
   
this
   
(
   
provider
   
,
    
redirectUri
  ! ,
,
  , -
null
  . 2
)
  2 3
{
ÀÀ 
}
ÃÃ 
public
ŒŒ 
ChallengeResult
ŒŒ "
(
ŒŒ" #
string
ŒŒ# )
provider
ŒŒ* 2
,
ŒŒ2 3
string
ŒŒ4 :
redirectUri
ŒŒ; F
,
ŒŒF G
string
ŒŒH N
userId
ŒŒO U
)
ŒŒU V
{
œœ 
LoginProvider
–– 
=
–– 
provider
––  (
;
––( )
RedirectUri
—— 
=
—— 
redirectUri
—— )
;
——) *
UserId
““ 
=
““ 
userId
““ 
;
““  
}
”” 
public
’’ 
string
’’ 
LoginProvider
’’ '
{
’’( )
get
’’* -
;
’’- .
set
’’/ 2
;
’’2 3
}
’’4 5
public
÷÷ 
string
÷÷ 
RedirectUri
÷÷ %
{
÷÷& '
get
÷÷( +
;
÷÷+ ,
set
÷÷- 0
;
÷÷0 1
}
÷÷2 3
public
◊◊ 
string
◊◊ 
UserId
◊◊  
{
◊◊! "
get
◊◊# &
;
◊◊& '
set
◊◊( +
;
◊◊+ ,
}
◊◊- .
public
ŸŸ 
override
ŸŸ 
void
ŸŸ  
ExecuteResult
ŸŸ! .
(
ŸŸ. /
ControllerContext
ŸŸ/ @
context
ŸŸA H
)
ŸŸH I
{
⁄⁄ 
var
€€ 

properties
€€ 
=
€€  
new
€€! $&
AuthenticationProperties
€€% =
{
€€> ?
RedirectUri
€€@ K
=
€€L M
RedirectUri
€€N Y
}
€€Z [
;
€€[ \
if
‹‹ 
(
‹‹ 
UserId
‹‹ 
!=
‹‹ 
null
‹‹ "
)
‹‹" #
{
›› 

properties
ﬁﬁ 
.
ﬁﬁ 

Dictionary
ﬁﬁ )
[
ﬁﬁ) *
XsrfKey
ﬁﬁ* 1
]
ﬁﬁ1 2
=
ﬁﬁ3 4
UserId
ﬁﬁ5 ;
;
ﬁﬁ; <
}
ﬂﬂ 
context
‡‡ 
.
‡‡ 
HttpContext
‡‡ #
.
‡‡# $
GetOwinContext
‡‡$ 2
(
‡‡2 3
)
‡‡3 4
.
‡‡4 5
Authentication
‡‡5 C
.
‡‡C D
	Challenge
‡‡D M
(
‡‡M N

properties
‡‡N X
,
‡‡X Y
LoginProvider
‡‡Z g
)
‡‡g h
;
‡‡h i
}
·· 
}
‚‚ 	
}
‰‰ 
}ÂÂ ◊
LC:\Users\burak\Source\Repos\mvcsonar\SonarQube\Controllers\HomeController.cs
	namespace 	
	SonarQube
 
. 
Controllers 
{ 
public		 

class		 
HomeController		 
:		  !

Controller		" ,
{

 
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
) 
; 
} 	
public 
ActionResult 
About !
(! "
)" #
{ 	
ViewBag 
. 
Message 
= 
$str B
;B C
return 
View 
( 
) 
; 
} 	
public 
ActionResult 
Contact #
(# $
)$ %
{ 	
ViewBag 
. 
Message 
= 
$str 2
;2 3
return 
View 
( 
) 
; 
} 	
public 
void 
sonar 
( 
) 
{ 	
int   
target   
=   
-   
$num   
;   
int!! 
num!! 
=!! 
$num!! 
;!! 
target"" 
="" 
-"" 
num"" 
;"" 
target## 
=## 
+## 
num## 
;## 
}$$ 	
}%% 
}&& ˘é
NC:\Users\burak\Source\Repos\mvcsonar\SonarQube\Controllers\ManageController.cs
	namespace 	
	SonarQube
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
public 

class 
ManageController !
:" #

Controller$ .
{ 
private $
ApplicationSignInManager (
_signInManager) 7
;7 8
private "
ApplicationUserManager &
_userManager' 3
;3 4
public 
ManageController 
(  
)  !
{ 	
} 	
public 
ManageController 
(  "
ApplicationUserManager  6
userManager7 B
,B C$
ApplicationSignInManagerD \
signInManager] j
)j k
{ 	
UserManager 
= 
userManager %
;% &
SignInManager 
= 
signInManager )
;) *
} 	
public $
ApplicationSignInManager '
SignInManager( 5
{ 	
get 
{   
return!! 
_signInManager!! %
??!!& (
HttpContext!!) 4
.!!4 5
GetOwinContext!!5 C
(!!C D
)!!D E
.!!E F
Get!!F I
<!!I J$
ApplicationSignInManager!!J b
>!!b c
(!!c d
)!!d e
;!!e f
}"" 
private## 
set## 
{$$ 
_signInManager%% 
=%%  
value%%! &
;%%& '
}&& 
}'' 	
public)) "
ApplicationUserManager)) %
UserManager))& 1
{** 	
get++ 
{,, 
return-- 
_userManager-- #
??--$ &
HttpContext--' 2
.--2 3
GetOwinContext--3 A
(--A B
)--B C
.--C D
GetUserManager--D R
<--R S"
ApplicationUserManager--S i
>--i j
(--j k
)--k l
;--l m
}.. 
private// 
set// 
{00 
_userManager11 
=11 
value11 $
;11$ %
}22 
}33 	
public77 
async77 
Task77 
<77 
ActionResult77 &
>77& '
Index77( -
(77- .
ManageMessageId77. =
?77= >
message77? F
)77F G
{88 	
ViewBag99 
.99 
StatusMessage99 !
=99" #
message:: 
==:: 
ManageMessageId:: *
.::* +!
ChangePasswordSuccess::+ @
?::A B
$str::C d
:;; 
message;; 
==;; 
ManageMessageId;; ,
.;;, -
SetPasswordSuccess;;- ?
?;;@ A
$str;;B _
:<< 
message<< 
==<< 
ManageMessageId<< ,
.<<, -
SetTwoFactorSuccess<<- @
?<<A B
$str<<C z
:== 
message== 
==== 
ManageMessageId== ,
.==, -
Error==- 2
?==3 4
$str==5 M
:>> 
message>> 
==>> 
ManageMessageId>> ,
.>>, -
AddPhoneSuccess>>- <
?>>= >
$str>>? ]
:?? 
message?? 
==?? 
ManageMessageId?? ,
.??, -
RemovePhoneSuccess??- ?
???@ A
$str??B b
:@@ 
$str@@ 
;@@ 
varBB 
userIdBB 
=BB 
UserBB 
.BB 
IdentityBB &
.BB& '
	GetUserIdBB' 0
(BB0 1
)BB1 2
;BB2 3
varCC 
modelCC 
=CC 
newCC 
IndexViewModelCC *
{DD 
HasPasswordEE 
=EE 
HasPasswordEE )
(EE) *
)EE* +
,EE+ ,
PhoneNumberFF 
=FF 
awaitFF #
UserManagerFF$ /
.FF/ 0
GetPhoneNumberAsyncFF0 C
(FFC D
userIdFFD J
)FFJ K
,FFK L
	TwoFactorGG 
=GG 
awaitGG !
UserManagerGG" -
.GG- .$
GetTwoFactorEnabledAsyncGG. F
(GGF G
userIdGGG M
)GGM N
,GGN O
LoginsHH 
=HH 
awaitHH 
UserManagerHH *
.HH* +
GetLoginsAsyncHH+ 9
(HH9 :
userIdHH: @
)HH@ A
,HHA B
BrowserRememberedII !
=II" #
awaitII$ )!
AuthenticationManagerII* ?
.II? @+
TwoFactorBrowserRememberedAsyncII@ _
(II_ `
userIdII` f
)IIf g
}JJ 
;JJ 
returnKK 
ViewKK 
(KK 
modelKK 
)KK 
;KK 
}LL 	
[PP 	
HttpPostPP	 
]PP 
[QQ 	$
ValidateAntiForgeryTokenQQ	 !
]QQ! "
publicRR 
asyncRR 
TaskRR 
<RR 
ActionResultRR &
>RR& '
RemoveLoginRR( 3
(RR3 4
stringRR4 :
loginProviderRR; H
,RRH I
stringRRJ P
providerKeyRRQ \
)RR\ ]
{SS 	
ManageMessageIdTT 
?TT 
messageTT $
;TT$ %
varUU 
resultUU 
=UU 
awaitUU 
UserManagerUU *
.UU* +
RemoveLoginAsyncUU+ ;
(UU; <
UserUU< @
.UU@ A
IdentityUUA I
.UUI J
	GetUserIdUUJ S
(UUS T
)UUT U
,UUU V
newUUW Z
UserLoginInfoUU[ h
(UUh i
loginProviderUUi v
,UUv w
providerKey	UUx É
)
UUÉ Ñ
)
UUÑ Ö
;
UUÖ Ü
ifVV 
(VV 
resultVV 
.VV 
	SucceededVV  
)VV  !
{WW 
varXX 
userXX 
=XX 
awaitXX  
UserManagerXX! ,
.XX, -
FindByIdAsyncXX- :
(XX: ;
UserXX; ?
.XX? @
IdentityXX@ H
.XXH I
	GetUserIdXXI R
(XXR S
)XXS T
)XXT U
;XXU V
ifYY 
(YY 
userYY 
!=YY 
nullYY  
)YY  !
{ZZ 
await[[ 
SignInManager[[ '
.[[' (
SignInAsync[[( 3
([[3 4
user[[4 8
,[[8 9
isPersistent[[: F
:[[F G
false[[H M
,[[M N
rememberBrowser[[O ^
:[[^ _
false[[` e
)[[e f
;[[f g
}\\ 
message]] 
=]] 
ManageMessageId]] )
.]]) *
RemoveLoginSuccess]]* <
;]]< =
}^^ 
else__ 
{`` 
messageaa 
=aa 
ManageMessageIdaa )
.aa) *
Erroraa* /
;aa/ 0
}bb 
returncc 
RedirectToActioncc #
(cc# $
$strcc$ 2
,cc2 3
newcc4 7
{cc8 9
Messagecc: A
=ccB C
messageccD K
}ccL M
)ccM N
;ccN O
}dd 	
publichh 
ActionResulthh 
AddPhoneNumberhh *
(hh* +
)hh+ ,
{ii 	
returnjj 
Viewjj 
(jj 
)jj 
;jj 
}kk 	
[oo 	
HttpPostoo	 
]oo 
[pp 	$
ValidateAntiForgeryTokenpp	 !
]pp! "
publicqq 
asyncqq 
Taskqq 
<qq 
ActionResultqq &
>qq& '
AddPhoneNumberqq( 6
(qq6 7#
AddPhoneNumberViewModelqq7 N
modelqqO T
)qqT U
{rr 	
ifss 
(ss 
!ss 

ModelStatess 
.ss 
IsValidss #
)ss# $
{tt 
returnuu 
Viewuu 
(uu 
modeluu !
)uu! "
;uu" #
}vv 
varxx 
codexx 
=xx 
awaitxx 
UserManagerxx (
.xx( )/
#GenerateChangePhoneNumberTokenAsyncxx) L
(xxL M
UserxxM Q
.xxQ R
IdentityxxR Z
.xxZ [
	GetUserIdxx[ d
(xxd e
)xxe f
,xxf g
modelxxh m
.xxm n
Numberxxn t
)xxt u
;xxu v
ifyy 
(yy 
UserManageryy 
.yy 

SmsServiceyy &
!=yy' )
nullyy* .
)yy. /
{zz 
var{{ 
message{{ 
={{ 
new{{ !
IdentityMessage{{" 1
{|| 
Destination}} 
=}}  !
model}}" '
.}}' (
Number}}( .
,}}. /
Body~~ 
=~~ 
$str~~ 4
+~~5 6
code~~7 ;
} 
; 
await
ÄÄ 
UserManager
ÄÄ !
.
ÄÄ! "

SmsService
ÄÄ" ,
.
ÄÄ, -
	SendAsync
ÄÄ- 6
(
ÄÄ6 7
message
ÄÄ7 >
)
ÄÄ> ?
;
ÄÄ? @
}
ÅÅ 
return
ÇÇ 
RedirectToAction
ÇÇ #
(
ÇÇ# $
$str
ÇÇ$ 7
,
ÇÇ7 8
new
ÇÇ9 <
{
ÇÇ= >
PhoneNumber
ÇÇ? J
=
ÇÇK L
model
ÇÇM R
.
ÇÇR S
Number
ÇÇS Y
}
ÇÇZ [
)
ÇÇ[ \
;
ÇÇ\ ]
}
ÉÉ 	
[
áá 	
HttpPost
áá	 
]
áá 
[
àà 	&
ValidateAntiForgeryToken
àà	 !
]
àà! "
public
ââ 
async
ââ 
Task
ââ 
<
ââ 
ActionResult
ââ &
>
ââ& '+
EnableTwoFactorAuthentication
ââ( E
(
ââE F
)
ââF G
{
ää 	
await
ãã 
UserManager
ãã 
.
ãã &
SetTwoFactorEnabledAsync
ãã 6
(
ãã6 7
User
ãã7 ;
.
ãã; <
Identity
ãã< D
.
ããD E
	GetUserId
ããE N
(
ããN O
)
ããO P
,
ããP Q
true
ããR V
)
ããV W
;
ããW X
var
åå 
user
åå 
=
åå 
await
åå 
UserManager
åå (
.
åå( )
FindByIdAsync
åå) 6
(
åå6 7
User
åå7 ;
.
åå; <
Identity
åå< D
.
ååD E
	GetUserId
ååE N
(
ååN O
)
ååO P
)
ååP Q
;
ååQ R
if
çç 
(
çç 
user
çç 
!=
çç 
null
çç 
)
çç 
{
éé 
await
èè 
SignInManager
èè #
.
èè# $
SignInAsync
èè$ /
(
èè/ 0
user
èè0 4
,
èè4 5
isPersistent
èè6 B
:
èèB C
false
èèD I
,
èèI J
rememberBrowser
èèK Z
:
èèZ [
false
èè\ a
)
èèa b
;
èèb c
}
êê 
return
ëë 
RedirectToAction
ëë #
(
ëë# $
$str
ëë$ +
,
ëë+ ,
$str
ëë- 5
)
ëë5 6
;
ëë6 7
}
íí 	
[
ññ 	
HttpPost
ññ	 
]
ññ 
[
óó 	&
ValidateAntiForgeryToken
óó	 !
]
óó! "
public
òò 
async
òò 
Task
òò 
<
òò 
ActionResult
òò &
>
òò& ',
DisableTwoFactorAuthentication
òò( F
(
òòF G
)
òòG H
{
ôô 	
await
öö 
UserManager
öö 
.
öö &
SetTwoFactorEnabledAsync
öö 6
(
öö6 7
User
öö7 ;
.
öö; <
Identity
öö< D
.
ööD E
	GetUserId
ööE N
(
ööN O
)
ööO P
,
ööP Q
false
ööR W
)
ööW X
;
ööX Y
var
õõ 
user
õõ 
=
õõ 
await
õõ 
UserManager
õõ (
.
õõ( )
FindByIdAsync
õõ) 6
(
õõ6 7
User
õõ7 ;
.
õõ; <
Identity
õõ< D
.
õõD E
	GetUserId
õõE N
(
õõN O
)
õõO P
)
õõP Q
;
õõQ R
if
úú 
(
úú 
user
úú 
!=
úú 
null
úú 
)
úú 
{
ùù 
await
ûû 
SignInManager
ûû #
.
ûû# $
SignInAsync
ûû$ /
(
ûû/ 0
user
ûû0 4
,
ûû4 5
isPersistent
ûû6 B
:
ûûB C
false
ûûD I
,
ûûI J
rememberBrowser
ûûK Z
:
ûûZ [
false
ûû\ a
)
ûûa b
;
ûûb c
}
üü 
return
†† 
RedirectToAction
†† #
(
††# $
$str
††$ +
,
††+ ,
$str
††- 5
)
††5 6
;
††6 7
}
°° 	
public
•• 
async
•• 
Task
•• 
<
•• 
ActionResult
•• &
>
••& '
VerifyPhoneNumber
••( 9
(
••9 :
string
••: @
phoneNumber
••A L
)
••L M
{
¶¶ 	
var
ßß 
code
ßß 
=
ßß 
await
ßß 
UserManager
ßß (
.
ßß( )1
#GenerateChangePhoneNumberTokenAsync
ßß) L
(
ßßL M
User
ßßM Q
.
ßßQ R
Identity
ßßR Z
.
ßßZ [
	GetUserId
ßß[ d
(
ßßd e
)
ßße f
,
ßßf g
phoneNumber
ßßh s
)
ßßs t
;
ßßt u
return
©© 
phoneNumber
©© 
==
©© !
null
©©" &
?
©©' (
View
©©) -
(
©©- .
$str
©©. 5
)
©©5 6
:
©©7 8
View
©©9 =
(
©©= >
new
©©> A(
VerifyPhoneNumberViewModel
©©B \
{
©©] ^
PhoneNumber
©©_ j
=
©©k l
phoneNumber
©©m x
}
©©y z
)
©©z {
;
©©{ |
}
™™ 	
[
ÆÆ 	
HttpPost
ÆÆ	 
]
ÆÆ 
[
ØØ 	&
ValidateAntiForgeryToken
ØØ	 !
]
ØØ! "
public
∞∞ 
async
∞∞ 
Task
∞∞ 
<
∞∞ 
ActionResult
∞∞ &
>
∞∞& '
VerifyPhoneNumber
∞∞( 9
(
∞∞9 :(
VerifyPhoneNumberViewModel
∞∞: T
model
∞∞U Z
)
∞∞Z [
{
±± 	
if
≤≤ 
(
≤≤ 
!
≤≤ 

ModelState
≤≤ 
.
≤≤ 
IsValid
≤≤ #
)
≤≤# $
{
≥≥ 
return
¥¥ 
View
¥¥ 
(
¥¥ 
model
¥¥ !
)
¥¥! "
;
¥¥" #
}
µµ 
var
∂∂ 
result
∂∂ 
=
∂∂ 
await
∂∂ 
UserManager
∂∂ *
.
∂∂* +$
ChangePhoneNumberAsync
∂∂+ A
(
∂∂A B
User
∂∂B F
.
∂∂F G
Identity
∂∂G O
.
∂∂O P
	GetUserId
∂∂P Y
(
∂∂Y Z
)
∂∂Z [
,
∂∂[ \
model
∂∂] b
.
∂∂b c
PhoneNumber
∂∂c n
,
∂∂n o
model
∂∂p u
.
∂∂u v
Code
∂∂v z
)
∂∂z {
;
∂∂{ |
if
∑∑ 
(
∑∑ 
result
∑∑ 
.
∑∑ 
	Succeeded
∑∑  
)
∑∑  !
{
∏∏ 
var
ππ 
user
ππ 
=
ππ 
await
ππ  
UserManager
ππ! ,
.
ππ, -
FindByIdAsync
ππ- :
(
ππ: ;
User
ππ; ?
.
ππ? @
Identity
ππ@ H
.
ππH I
	GetUserId
ππI R
(
ππR S
)
ππS T
)
ππT U
;
ππU V
if
∫∫ 
(
∫∫ 
user
∫∫ 
!=
∫∫ 
null
∫∫  
)
∫∫  !
{
ªª 
await
ºº 
SignInManager
ºº '
.
ºº' (
SignInAsync
ºº( 3
(
ºº3 4
user
ºº4 8
,
ºº8 9
isPersistent
ºº: F
:
ººF G
false
ººH M
,
ººM N
rememberBrowser
ººO ^
:
ºº^ _
false
ºº` e
)
ººe f
;
ººf g
}
ΩΩ 
return
ææ 
RedirectToAction
ææ '
(
ææ' (
$str
ææ( /
,
ææ/ 0
new
ææ1 4
{
ææ5 6
Message
ææ7 >
=
ææ? @
ManageMessageId
ææA P
.
ææP Q
AddPhoneSuccess
ææQ `
}
ææa b
)
ææb c
;
ææc d
}
øø 

ModelState
¡¡ 
.
¡¡ 
AddModelError
¡¡ $
(
¡¡$ %
$str
¡¡% '
,
¡¡' (
$str
¡¡) A
)
¡¡A B
;
¡¡B C
return
¬¬ 
View
¬¬ 
(
¬¬ 
model
¬¬ 
)
¬¬ 
;
¬¬ 
}
√√ 	
[
«« 	
HttpPost
««	 
]
«« 
[
»» 	&
ValidateAntiForgeryToken
»»	 !
]
»»! "
public
…… 
async
…… 
Task
…… 
<
…… 
ActionResult
…… &
>
……& '
RemovePhoneNumber
……( 9
(
……9 :
)
……: ;
{
   	
var
ÀÀ 
result
ÀÀ 
=
ÀÀ 
await
ÀÀ 
UserManager
ÀÀ *
.
ÀÀ* +!
SetPhoneNumberAsync
ÀÀ+ >
(
ÀÀ> ?
User
ÀÀ? C
.
ÀÀC D
Identity
ÀÀD L
.
ÀÀL M
	GetUserId
ÀÀM V
(
ÀÀV W
)
ÀÀW X
,
ÀÀX Y
null
ÀÀZ ^
)
ÀÀ^ _
;
ÀÀ_ `
if
ÃÃ 
(
ÃÃ 
!
ÃÃ 
result
ÃÃ 
.
ÃÃ 
	Succeeded
ÃÃ !
)
ÃÃ! "
{
ÕÕ 
return
ŒŒ 
RedirectToAction
ŒŒ '
(
ŒŒ' (
$str
ŒŒ( /
,
ŒŒ/ 0
new
ŒŒ1 4
{
ŒŒ5 6
Message
ŒŒ7 >
=
ŒŒ? @
ManageMessageId
ŒŒA P
.
ŒŒP Q
Error
ŒŒQ V
}
ŒŒW X
)
ŒŒX Y
;
ŒŒY Z
}
œœ 
var
–– 
user
–– 
=
–– 
await
–– 
UserManager
–– (
.
––( )
FindByIdAsync
––) 6
(
––6 7
User
––7 ;
.
––; <
Identity
––< D
.
––D E
	GetUserId
––E N
(
––N O
)
––O P
)
––P Q
;
––Q R
if
—— 
(
—— 
user
—— 
!=
—— 
null
—— 
)
—— 
{
““ 
await
”” 
SignInManager
”” #
.
””# $
SignInAsync
””$ /
(
””/ 0
user
””0 4
,
””4 5
isPersistent
””6 B
:
””B C
false
””D I
,
””I J
rememberBrowser
””K Z
:
””Z [
false
””\ a
)
””a b
;
””b c
}
‘‘ 
return
’’ 
RedirectToAction
’’ #
(
’’# $
$str
’’$ +
,
’’+ ,
new
’’- 0
{
’’1 2
Message
’’3 :
=
’’; <
ManageMessageId
’’= L
.
’’L M 
RemovePhoneSuccess
’’M _
}
’’` a
)
’’a b
;
’’b c
}
÷÷ 	
public
⁄⁄ 
ActionResult
⁄⁄ 
ChangePassword
⁄⁄ *
(
⁄⁄* +
)
⁄⁄+ ,
{
€€ 	
return
‹‹ 
View
‹‹ 
(
‹‹ 
)
‹‹ 
;
‹‹ 
}
›› 	
[
·· 	
HttpPost
··	 
]
·· 
[
‚‚ 	&
ValidateAntiForgeryToken
‚‚	 !
]
‚‚! "
public
„„ 
async
„„ 
Task
„„ 
<
„„ 
ActionResult
„„ &
>
„„& '
ChangePassword
„„( 6
(
„„6 7%
ChangePasswordViewModel
„„7 N
model
„„O T
)
„„T U
{
‰‰ 	
if
ÂÂ 
(
ÂÂ 
!
ÂÂ 

ModelState
ÂÂ 
.
ÂÂ 
IsValid
ÂÂ #
)
ÂÂ# $
{
ÊÊ 
return
ÁÁ 
View
ÁÁ 
(
ÁÁ 
model
ÁÁ !
)
ÁÁ! "
;
ÁÁ" #
}
ËË 
var
ÈÈ 
result
ÈÈ 
=
ÈÈ 
await
ÈÈ 
UserManager
ÈÈ *
.
ÈÈ* +!
ChangePasswordAsync
ÈÈ+ >
(
ÈÈ> ?
User
ÈÈ? C
.
ÈÈC D
Identity
ÈÈD L
.
ÈÈL M
	GetUserId
ÈÈM V
(
ÈÈV W
)
ÈÈW X
,
ÈÈX Y
model
ÈÈZ _
.
ÈÈ_ `
OldPassword
ÈÈ` k
,
ÈÈk l
model
ÈÈm r
.
ÈÈr s
NewPassword
ÈÈs ~
)
ÈÈ~ 
;ÈÈ Ä
if
ÍÍ 
(
ÍÍ 
result
ÍÍ 
.
ÍÍ 
	Succeeded
ÍÍ  
)
ÍÍ  !
{
ÎÎ 
var
ÏÏ 
user
ÏÏ 
=
ÏÏ 
await
ÏÏ  
UserManager
ÏÏ! ,
.
ÏÏ, -
FindByIdAsync
ÏÏ- :
(
ÏÏ: ;
User
ÏÏ; ?
.
ÏÏ? @
Identity
ÏÏ@ H
.
ÏÏH I
	GetUserId
ÏÏI R
(
ÏÏR S
)
ÏÏS T
)
ÏÏT U
;
ÏÏU V
if
ÌÌ 
(
ÌÌ 
user
ÌÌ 
!=
ÌÌ 
null
ÌÌ  
)
ÌÌ  !
{
ÓÓ 
await
ÔÔ 
SignInManager
ÔÔ '
.
ÔÔ' (
SignInAsync
ÔÔ( 3
(
ÔÔ3 4
user
ÔÔ4 8
,
ÔÔ8 9
isPersistent
ÔÔ: F
:
ÔÔF G
false
ÔÔH M
,
ÔÔM N
rememberBrowser
ÔÔO ^
:
ÔÔ^ _
false
ÔÔ` e
)
ÔÔe f
;
ÔÔf g
}
 
return
ÒÒ 
RedirectToAction
ÒÒ '
(
ÒÒ' (
$str
ÒÒ( /
,
ÒÒ/ 0
new
ÒÒ1 4
{
ÒÒ5 6
Message
ÒÒ7 >
=
ÒÒ? @
ManageMessageId
ÒÒA P
.
ÒÒP Q#
ChangePasswordSuccess
ÒÒQ f
}
ÒÒg h
)
ÒÒh i
;
ÒÒi j
}
ÚÚ 
	AddErrors
ÛÛ 
(
ÛÛ 
result
ÛÛ 
)
ÛÛ 
;
ÛÛ 
return
ÙÙ 
View
ÙÙ 
(
ÙÙ 
model
ÙÙ 
)
ÙÙ 
;
ÙÙ 
}
ıı 	
public
˘˘ 
ActionResult
˘˘ 
SetPassword
˘˘ '
(
˘˘' (
)
˘˘( )
{
˙˙ 	
return
˚˚ 
View
˚˚ 
(
˚˚ 
)
˚˚ 
;
˚˚ 
}
¸¸ 	
[
ÄÄ 	
HttpPost
ÄÄ	 
]
ÄÄ 
[
ÅÅ 	&
ValidateAntiForgeryToken
ÅÅ	 !
]
ÅÅ! "
public
ÇÇ 
async
ÇÇ 
Task
ÇÇ 
<
ÇÇ 
ActionResult
ÇÇ &
>
ÇÇ& '
SetPassword
ÇÇ( 3
(
ÇÇ3 4"
SetPasswordViewModel
ÇÇ4 H
model
ÇÇI N
)
ÇÇN O
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 

ModelState
ÑÑ 
.
ÑÑ 
IsValid
ÑÑ "
)
ÑÑ" #
{
ÖÖ 
var
ÜÜ 
result
ÜÜ 
=
ÜÜ 
await
ÜÜ "
UserManager
ÜÜ# .
.
ÜÜ. /
AddPasswordAsync
ÜÜ/ ?
(
ÜÜ? @
User
ÜÜ@ D
.
ÜÜD E
Identity
ÜÜE M
.
ÜÜM N
	GetUserId
ÜÜN W
(
ÜÜW X
)
ÜÜX Y
,
ÜÜY Z
model
ÜÜ[ `
.
ÜÜ` a
NewPassword
ÜÜa l
)
ÜÜl m
;
ÜÜm n
if
áá 
(
áá 
result
áá 
.
áá 
	Succeeded
áá $
)
áá$ %
{
àà 
var
ââ 
user
ââ 
=
ââ 
await
ââ $
UserManager
ââ% 0
.
ââ0 1
FindByIdAsync
ââ1 >
(
ââ> ?
User
ââ? C
.
ââC D
Identity
ââD L
.
ââL M
	GetUserId
ââM V
(
ââV W
)
ââW X
)
ââX Y
;
ââY Z
if
ää 
(
ää 
user
ää 
!=
ää 
null
ää  $
)
ää$ %
{
ãã 
await
åå 
SignInManager
åå +
.
åå+ ,
SignInAsync
åå, 7
(
åå7 8
user
åå8 <
,
åå< =
isPersistent
åå> J
:
ååJ K
false
ååL Q
,
ååQ R
rememberBrowser
ååS b
:
ååb c
false
ååd i
)
ååi j
;
ååj k
}
çç 
return
éé 
RedirectToAction
éé +
(
éé+ ,
$str
éé, 3
,
éé3 4
new
éé5 8
{
éé9 :
Message
éé; B
=
ééC D
ManageMessageId
ééE T
.
ééT U 
SetPasswordSuccess
ééU g
}
ééh i
)
ééi j
;
ééj k
}
èè 
	AddErrors
êê 
(
êê 
result
êê  
)
êê  !
;
êê! "
}
ëë 
return
îî 
View
îî 
(
îî 
model
îî 
)
îî 
;
îî 
}
ïï 	
public
ôô 
async
ôô 
Task
ôô 
<
ôô 
ActionResult
ôô &
>
ôô& '
ManageLogins
ôô( 4
(
ôô4 5
ManageMessageId
ôô5 D
?
ôôD E
message
ôôF M
)
ôôM N
{
öö 	
ViewBag
õõ 
.
õõ 
StatusMessage
õõ !
=
õõ" #
message
úú 
==
úú 
ManageMessageId
úú *
.
úú* + 
RemoveLoginSuccess
úú+ =
?
úú> ?
$str
úú@ a
:
ùù 
message
ùù 
==
ùù 
ManageMessageId
ùù ,
.
ùù, -
Error
ùù- 2
?
ùù3 4
$str
ùù5 M
:
ûû 
$str
ûû 
;
ûû 
var
üü 
user
üü 
=
üü 
await
üü 
UserManager
üü (
.
üü( )
FindByIdAsync
üü) 6
(
üü6 7
User
üü7 ;
.
üü; <
Identity
üü< D
.
üüD E
	GetUserId
üüE N
(
üüN O
)
üüO P
)
üüP Q
;
üüQ R
if
†† 
(
†† 
user
†† 
==
†† 
null
†† 
)
†† 
{
°° 
return
¢¢ 
View
¢¢ 
(
¢¢ 
$str
¢¢ #
)
¢¢# $
;
¢¢$ %
}
££ 
var
§§ 

userLogins
§§ 
=
§§ 
await
§§ "
UserManager
§§# .
.
§§. /
GetLoginsAsync
§§/ =
(
§§= >
User
§§> B
.
§§B C
Identity
§§C K
.
§§K L
	GetUserId
§§L U
(
§§U V
)
§§V W
)
§§W X
;
§§X Y
var
•• 
otherLogins
•• 
=
•• #
AuthenticationManager
•• 3
.
••3 4,
GetExternalAuthenticationTypes
••4 R
(
••R S
)
••S T
.
••T U
Where
••U Z
(
••Z [
auth
••[ _
=>
••` b

userLogins
••c m
.
••m n
All
••n q
(
••q r
ul
••r t
=>
••u w
auth
••x |
.
••| }!
AuthenticationType••} è
!=••ê í
ul••ì ï
.••ï ñ
LoginProvider••ñ £
)••£ §
)••§ •
.••• ¶
ToList••¶ ¨
(••¨ ≠
)••≠ Æ
;••Æ Ø
ViewBag
¶¶ 
.
¶¶ 
ShowRemoveButton
¶¶ $
=
¶¶% &
user
¶¶' +
.
¶¶+ ,
PasswordHash
¶¶, 8
!=
¶¶9 ;
null
¶¶< @
||
¶¶A C

userLogins
¶¶D N
.
¶¶N O
Count
¶¶O T
>
¶¶U V
$num
¶¶W X
;
¶¶X Y
return
ßß 
View
ßß 
(
ßß 
new
ßß #
ManageLoginsViewModel
ßß 1
{
®® 
CurrentLogins
©© 
=
©© 

userLogins
©©  *
,
©©* +
OtherLogins
™™ 
=
™™ 
otherLogins
™™ )
}
´´ 
)
´´ 
;
´´ 
}
¨¨ 	
[
∞∞ 	
HttpPost
∞∞	 
]
∞∞ 
[
±± 	&
ValidateAntiForgeryToken
±±	 !
]
±±! "
public
≤≤ 
ActionResult
≤≤ 
	LinkLogin
≤≤ %
(
≤≤% &
string
≤≤& ,
provider
≤≤- 5
)
≤≤5 6
{
≥≥ 	
return
µµ 
new
µµ 
AccountController
µµ (
.
µµ( )
ChallengeResult
µµ) 8
(
µµ8 9
provider
µµ9 A
,
µµA B
Url
µµC F
.
µµF G
Action
µµG M
(
µµM N
$str
µµN a
,
µµa b
$str
µµc k
)
µµk l
,
µµl m
User
µµn r
.
µµr s
Identity
µµs {
.
µµ{ |
	GetUserIdµµ| Ö
(µµÖ Ü
)µµÜ á
)µµá à
;µµà â
}
∂∂ 	
public
∫∫ 
async
∫∫ 
Task
∫∫ 
<
∫∫ 
ActionResult
∫∫ &
>
∫∫& '
LinkLoginCallback
∫∫( 9
(
∫∫9 :
)
∫∫: ;
{
ªª 	
var
ºº 
	loginInfo
ºº 
=
ºº 
await
ºº !#
AuthenticationManager
ºº" 7
.
ºº7 8'
GetExternalLoginInfoAsync
ºº8 Q
(
ººQ R
XsrfKey
ººR Y
,
ººY Z
User
ºº[ _
.
ºº_ `
Identity
ºº` h
.
ººh i
	GetUserId
ººi r
(
ººr s
)
ººs t
)
ººt u
;
ººu v
if
ΩΩ 
(
ΩΩ 
	loginInfo
ΩΩ 
==
ΩΩ 
null
ΩΩ !
)
ΩΩ! "
{
ææ 
return
øø 
RedirectToAction
øø '
(
øø' (
$str
øø( 6
,
øø6 7
new
øø8 ;
{
øø< =
Message
øø> E
=
øøF G
ManageMessageId
øøH W
.
øøW X
Error
øøX ]
}
øø^ _
)
øø_ `
;
øø` a
}
¿¿ 
var
¡¡ 
result
¡¡ 
=
¡¡ 
await
¡¡ 
UserManager
¡¡ *
.
¡¡* +
AddLoginAsync
¡¡+ 8
(
¡¡8 9
User
¡¡9 =
.
¡¡= >
Identity
¡¡> F
.
¡¡F G
	GetUserId
¡¡G P
(
¡¡P Q
)
¡¡Q R
,
¡¡R S
	loginInfo
¡¡T ]
.
¡¡] ^
Login
¡¡^ c
)
¡¡c d
;
¡¡d e
return
¬¬ 
result
¬¬ 
.
¬¬ 
	Succeeded
¬¬ #
?
¬¬$ %
RedirectToAction
¬¬& 6
(
¬¬6 7
$str
¬¬7 E
)
¬¬E F
:
¬¬G H
RedirectToAction
¬¬I Y
(
¬¬Y Z
$str
¬¬Z h
,
¬¬h i
new
¬¬j m
{
¬¬n o
Message
¬¬p w
=
¬¬x y
ManageMessageId¬¬z â
.¬¬â ä
Error¬¬ä è
}¬¬ê ë
)¬¬ë í
;¬¬í ì
}
√√ 	
	protected
≈≈ 
override
≈≈ 
void
≈≈ 
Dispose
≈≈  '
(
≈≈' (
bool
≈≈( ,
	disposing
≈≈- 6
)
≈≈6 7
{
∆∆ 	
if
«« 
(
«« 
	disposing
«« 
&&
«« 
_userManager
«« )
!=
««* ,
null
««- 1
)
««1 2
{
»» 
_userManager
…… 
.
…… 
Dispose
…… $
(
……$ %
)
……% &
;
……& '
_userManager
   
=
   
null
   #
;
  # $
}
ÀÀ 
base
ÕÕ 
.
ÕÕ 
Dispose
ÕÕ 
(
ÕÕ 
	disposing
ÕÕ "
)
ÕÕ" #
;
ÕÕ# $
}
ŒŒ 	
private
““ 
const
““ 
string
““ 
XsrfKey
““ $
=
““% &
$str
““' /
;
““/ 0
private
‘‘ $
IAuthenticationManager
‘‘ &#
AuthenticationManager
‘‘' <
{
’’ 	
get
÷÷ 
{
◊◊ 
return
ÿÿ 
HttpContext
ÿÿ "
.
ÿÿ" #
GetOwinContext
ÿÿ# 1
(
ÿÿ1 2
)
ÿÿ2 3
.
ÿÿ3 4
Authentication
ÿÿ4 B
;
ÿÿB C
}
ŸŸ 
}
⁄⁄ 	
private
‹‹ 
void
‹‹ 
	AddErrors
‹‹ 
(
‹‹ 
IdentityResult
‹‹ -
result
‹‹. 4
)
‹‹4 5
{
›› 	
foreach
ﬁﬁ 
(
ﬁﬁ 
var
ﬁﬁ 
error
ﬁﬁ 
in
ﬁﬁ !
result
ﬁﬁ" (
.
ﬁﬁ( )
Errors
ﬁﬁ) /
)
ﬁﬁ/ 0
{
ﬂﬂ 

ModelState
‡‡ 
.
‡‡ 
AddModelError
‡‡ (
(
‡‡( )
$str
‡‡) +
,
‡‡+ ,
error
‡‡- 2
)
‡‡2 3
;
‡‡3 4
}
·· 
}
‚‚ 	
private
‰‰ 
bool
‰‰ 
HasPassword
‰‰  
(
‰‰  !
)
‰‰! "
{
ÂÂ 	
var
ÊÊ 
user
ÊÊ 
=
ÊÊ 
UserManager
ÊÊ "
.
ÊÊ" #
FindById
ÊÊ# +
(
ÊÊ+ ,
User
ÊÊ, 0
.
ÊÊ0 1
Identity
ÊÊ1 9
.
ÊÊ9 :
	GetUserId
ÊÊ: C
(
ÊÊC D
)
ÊÊD E
)
ÊÊE F
;
ÊÊF G
if
ÁÁ 
(
ÁÁ 
user
ÁÁ 
!=
ÁÁ 
null
ÁÁ 
)
ÁÁ 
{
ËË 
return
ÈÈ 
user
ÈÈ 
.
ÈÈ 
PasswordHash
ÈÈ (
!=
ÈÈ) +
null
ÈÈ, 0
;
ÈÈ0 1
}
ÍÍ 
return
ÎÎ 
false
ÎÎ 
;
ÎÎ 
}
ÏÏ 	
private
ÓÓ 
bool
ÓÓ 
HasPhoneNumber
ÓÓ #
(
ÓÓ# $
)
ÓÓ$ %
{
ÔÔ 	
var
 
user
 
=
 
UserManager
 "
.
" #
FindById
# +
(
+ ,
User
, 0
.
0 1
Identity
1 9
.
9 :
	GetUserId
: C
(
C D
)
D E
)
E F
;
F G
if
ÒÒ 
(
ÒÒ 
user
ÒÒ 
!=
ÒÒ 
null
ÒÒ 
)
ÒÒ 
{
ÚÚ 
return
ÛÛ 
user
ÛÛ 
.
ÛÛ 
PhoneNumber
ÛÛ '
!=
ÛÛ( *
null
ÛÛ+ /
;
ÛÛ/ 0
}
ÙÙ 
return
ıı 
false
ıı 
;
ıı 
}
ˆˆ 	
public
¯¯ 
enum
¯¯ 
ManageMessageId
¯¯ #
{
˘˘ 	
AddPhoneSuccess
˙˙ 
,
˙˙ #
ChangePasswordSuccess
˚˚ !
,
˚˚! "!
SetTwoFactorSuccess
¸¸ 
,
¸¸   
SetPasswordSuccess
˝˝ 
,
˝˝  
RemoveLoginSuccess
˛˛ 
,
˛˛  
RemovePhoneSuccess
ˇˇ 
,
ˇˇ 
Error
ÄÄ 
}
ÅÅ 	
}
ÑÑ 
}ÖÖ Â
=C:\Users\burak\Source\Repos\mvcsonar\SonarQube\Global.asax.cs
	namespace		 	
	SonarQube		
 
{

 
public 

class 
MvcApplication 
:  !
System" (
.( )
Web) ,
., -
HttpApplication- <
{ 
	protected 
void 
Application_Start (
(( )
)) *
{ 	
AreaRegistration 
. 
RegisterAllAreas -
(- .
). /
;/ 0
FilterConfig 
. !
RegisterGlobalFilters .
(. /
GlobalFilters/ <
.< =
Filters= D
)D E
;E F
RouteConfig 
. 
RegisterRoutes &
(& '

RouteTable' 1
.1 2
Routes2 8
)8 9
;9 :
BundleConfig 
. 
RegisterBundles (
(( )
BundleTable) 4
.4 5
Bundles5 <
)< =
;= >
} 	
} 
} «
9C:\Users\burak\Source\Repos\mvcsonar\SonarQube\Hesapla.cs
	namespace 	
	SonarQube
 
{ 
public 

class 
Hesapla 
{		 
public

 
int

 
Topla

 
(

 
int

 
sayi1

 "
,

# $
int

$ '
sayi2

( -
)

- .
{ 	
return 
sayi1 
+ 
sayi2  
;  !
} 	
public 
int 
Cikar 
( 
int 
sayi1 "
," #
int$ '
sayi2( -
)- .
{ 	
return 
sayi1 
- 
sayi2  
;  !
} 	
public 
int 
Carp 
( 
int 
sayi1 !
,! "
int# &
sayi2' ,
), -
{ 	
return 
sayi1 
* 
sayi2  
;  !
} 	
public 
int 
Bol 
( 
int 
sayi1  
,  !
int" %
sayi2& +
)+ ,
{ 	
return 
sayi1 
/ 
sayi2  
;  !
} 	
public 
void 
sonar 
( 
) 
{ 	
int 
target 
= 
- 
$num 
; 
int 
num 
= 
$num 
; 
target 
= 
- 
num 
; 
target   
=   
+   
num   
;   
Console!! 
.!! 
Write!! 
(!! 
$str!! !
)!!! "
;!!" #
Console"" 
."" 
Write"" 
("" 
$str"" !
)""! "
;""" #
}## 	
public%% 
void%% 
sonar2%% 
(%% 
)%% 
{&& 	
int'' 
target'' 
='' 
-'' 
$num'' 
;'' 
int(( 
num(( 
=(( 
$num(( 
;(( 
target)) 
=)) 
-)) 
num)) 
;)) 
target** 
=** 
+** 
num** 
;** 
Console++ 
.++ 
Write++ 
(++ 
$str++ !
)++! "
;++" #
Console,, 
.,, 
Write,, 
(,, 
$str,, !
),,! "
;,," #
Console-- 
.-- 
Write-- 
(-- 
$str-- !
)--! "
;--" #
Console.. 
... 
Write.. 
(.. 
$str.. !
)..! "
;.." #
}00 	
}11 
}22 ÔF
JC:\Users\burak\Source\Repos\mvcsonar\SonarQube\Models\AccountViewModels.cs
	namespace 	
	SonarQube
 
. 
Models 
{ 
public 

class .
"ExternalLoginConfirmationViewModel 3
{ 
[ 	
Required	 
] 
[		 	
Display			 
(		 
Name		 
=		 
$str		 
)		  
]		  !
public

 
string

 
Email

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
} 
public 

class &
ExternalLoginListViewModel +
{ 
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
} 
public 

class 
SendCodeViewModel "
{ 
public 
string 
SelectedProvider &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
ICollection 
< 
System !
.! "
Web" %
.% &
Mvc& )
.) *
SelectListItem* 8
>8 9
	Providers: C
{D E
getF I
;I J
setK N
;N O
}P Q
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 

RememberMe 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
public 

class 
VerifyCodeViewModel $
{ 
[ 	
Required	 
] 
public 
string 
Provider 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[   	
Display  	 
(   
Name   
=   
$str   
)   
]    
public!! 
string!! 
Code!! 
{!! 
get!!  
;!!  !
set!!" %
;!!% &
}!!' (
public"" 
string"" 
	ReturnUrl"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
[$$ 	
Display$$	 
($$ 
Name$$ 
=$$ 
$str$$ 0
)$$0 1
]$$1 2
public%% 
bool%% 
RememberBrowser%% #
{%%$ %
get%%& )
;%%) *
set%%+ .
;%%. /
}%%0 1
public'' 
bool'' 

RememberMe'' 
{''  
get''! $
;''$ %
set''& )
;'') *
}''+ ,
}(( 
public** 

class** 
ForgotViewModel**  
{++ 
[,, 	
Required,,	 
],, 
[-- 	
Display--	 
(-- 
Name-- 
=-- 
$str-- 
)--  
]--  !
public.. 
string.. 
Email.. 
{.. 
get.. !
;..! "
set..# &
;..& '
}..( )
}// 
public11 

class11 
LoginViewModel11 
{22 
[33 	
Required33	 
]33 
[44 	
Display44	 
(44 
Name44 
=44 
$str44 
)44  
]44  !
[55 	
EmailAddress55	 
]55 
public66 
string66 
Email66 
{66 
get66 !
;66! "
set66# &
;66& '
}66( )
[88 	
Required88	 
]88 
[99 	
DataType99	 
(99 
DataType99 
.99 
Password99 #
)99# $
]99$ %
[:: 	
Display::	 
(:: 
Name:: 
=:: 
$str:: "
)::" #
]::# $
public;; 
string;; 
Password;; 
{;;  
get;;! $
;;;$ %
set;;& )
;;;) *
};;+ ,
[== 	
Display==	 
(== 
Name== 
=== 
$str== &
)==& '
]==' (
public>> 
bool>> 

RememberMe>> 
{>>  
get>>! $
;>>$ %
set>>& )
;>>) *
}>>+ ,
}?? 
publicAA 

classAA 
RegisterViewModelAA "
{BB 
[CC 	
RequiredCC	 
]CC 
[DD 	
EmailAddressDD	 
]DD 
[EE 	
DisplayEE	 
(EE 
NameEE 
=EE 
$strEE 
)EE  
]EE  !
publicFF 
stringFF 
EmailFF 
{FF 
getFF !
;FF! "
setFF# &
;FF& '
}FF( )
[HH 	
RequiredHH	 
]HH 
[II 	
StringLengthII	 
(II 
$numII 
,II 
ErrorMessageII '
=II( )
$strII* Y
,IIY Z
MinimumLengthII[ h
=IIi j
$numIIk l
)IIl m
]IIm n
[JJ 	
DataTypeJJ	 
(JJ 
DataTypeJJ 
.JJ 
PasswordJJ #
)JJ# $
]JJ$ %
[KK 	
DisplayKK	 
(KK 
NameKK 
=KK 
$strKK "
)KK" #
]KK# $
publicLL 
stringLL 
PasswordLL 
{LL  
getLL! $
;LL$ %
setLL& )
;LL) *
}LL+ ,
[NN 	
DataTypeNN	 
(NN 
DataTypeNN 
.NN 
PasswordNN #
)NN# $
]NN$ %
[OO 	
DisplayOO	 
(OO 
NameOO 
=OO 
$strOO *
)OO* +
]OO+ ,
[PP 	
ComparePP	 
(PP 
$strPP 
,PP 
ErrorMessagePP )
=PP* +
$strPP, b
)PPb c
]PPc d
publicQQ 
stringQQ 
ConfirmPasswordQQ %
{QQ& '
getQQ( +
;QQ+ ,
setQQ- 0
;QQ0 1
}QQ2 3
}RR 
publicTT 

classTT "
ResetPasswordViewModelTT '
{UU 
[VV 	
RequiredVV	 
]VV 
[WW 	
EmailAddressWW	 
]WW 
[XX 	
DisplayXX	 
(XX 
NameXX 
=XX 
$strXX 
)XX  
]XX  !
publicYY 
stringYY 
EmailYY 
{YY 
getYY !
;YY! "
setYY# &
;YY& '
}YY( )
[[[ 	
Required[[	 
][[ 
[\\ 	
StringLength\\	 
(\\ 
$num\\ 
,\\ 
ErrorMessage\\ '
=\\( )
$str\\* Y
,\\Y Z
MinimumLength\\[ h
=\\i j
$num\\k l
)\\l m
]\\m n
[]] 	
DataType]]	 
(]] 
DataType]] 
.]] 
Password]] #
)]]# $
]]]$ %
[^^ 	
Display^^	 
(^^ 
Name^^ 
=^^ 
$str^^ "
)^^" #
]^^# $
public__ 
string__ 
Password__ 
{__  
get__! $
;__$ %
set__& )
;__) *
}__+ ,
[aa 	
DataTypeaa	 
(aa 
DataTypeaa 
.aa 
Passwordaa #
)aa# $
]aa$ %
[bb 	
Displaybb	 
(bb 
Namebb 
=bb 
$strbb *
)bb* +
]bb+ ,
[cc 	
Comparecc	 
(cc 
$strcc 
,cc 
ErrorMessagecc )
=cc* +
$strcc, b
)ccb c
]ccc d
publicdd 
stringdd 
ConfirmPassworddd %
{dd& '
getdd( +
;dd+ ,
setdd- 0
;dd0 1
}dd2 3
publicff 
stringff 
Codeff 
{ff 
getff  
;ff  !
setff" %
;ff% &
}ff' (
}gg 
publicii 

classii #
ForgotPasswordViewModelii (
{jj 
[kk 	
Requiredkk	 
]kk 
[ll 	
EmailAddressll	 
]ll 
[mm 	
Displaymm	 
(mm 
Namemm 
=mm 
$strmm 
)mm  
]mm  !
publicnn 
stringnn 
Emailnn 
{nn 
getnn !
;nn! "
setnn# &
;nn& '
}nn( )
}oo 
}pp ﬁ
GC:\Users\burak\Source\Repos\mvcsonar\SonarQube\Models\IdentityModels.cs
	namespace 	
	SonarQube
 
. 
Models 
{ 
public

 

class

 
ApplicationUser

  
:

! "
IdentityUser

# /
{ 
public 
async 
Task 
< 
ClaimsIdentity (
>( )%
GenerateUserIdentityAsync* C
(C D
UserManagerD O
<O P
ApplicationUserP _
>_ `
managera h
)h i
{ 	
var 
userIdentity 
= 
await $
manager% ,
., -
CreateIdentityAsync- @
(@ A
thisA E
,E F&
DefaultAuthenticationTypesG a
.a b
ApplicationCookieb s
)s t
;t u
return 
userIdentity 
;  
} 	
} 
public 

class  
ApplicationDbContext %
:& '
IdentityDbContext( 9
<9 :
ApplicationUser: I
>I J
{ 
public  
ApplicationDbContext #
(# $
)$ %
: 
base 
( 
$str &
,& '
throwIfV1Schema( 7
:7 8
false9 >
)> ?
{ 	
} 	
public 
static  
ApplicationDbContext *
Create+ 1
(1 2
)2 3
{ 	
return 
new  
ApplicationDbContext +
(+ ,
), -
;- .
} 	
}   
}!! æ8
IC:\Users\burak\Source\Repos\mvcsonar\SonarQube\Models\ManageViewModels.cs
	namespace 	
	SonarQube
 
. 
Models 
{ 
public 

class 
IndexViewModel 
{		 
public

 
bool

 
HasPassword

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
IList 
< 
UserLoginInfo "
>" #
Logins$ *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
	TwoFactor 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
BrowserRemembered %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
public 

class !
ManageLoginsViewModel &
{ 
public 
IList 
< 
UserLoginInfo "
>" #
CurrentLogins$ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
IList 
< %
AuthenticationDescription .
>. /
OtherLogins0 ;
{< =
get> A
;A B
setC F
;F G
}H I
} 
public 

class 
FactorViewModel  
{ 
public 
string 
Purpose 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class  
SetPasswordViewModel %
{ 
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str* Y
,Y Z
MinimumLength[ h
=i j
$numk l
)l m
]m n
[   	
DataType  	 
(   
DataType   
.   
Password   #
)  # $
]  $ %
[!! 	
Display!!	 
(!! 
Name!! 
=!! 
$str!! &
)!!& '
]!!' (
public"" 
string"" 
NewPassword"" !
{""" #
get""$ '
;""' (
set"") ,
;"", -
}"". /
[$$ 	
DataType$$	 
($$ 
DataType$$ 
.$$ 
Password$$ #
)$$# $
]$$$ %
[%% 	
Display%%	 
(%% 
Name%% 
=%% 
$str%% .
)%%. /
]%%/ 0
[&& 	
Compare&&	 
(&& 
$str&& 
,&& 
ErrorMessage&&  ,
=&&- .
$str&&/ i
)&&i j
]&&j k
public'' 
string'' 
ConfirmPassword'' %
{''& '
get''( +
;''+ ,
set''- 0
;''0 1
}''2 3
}(( 
public** 

class** #
ChangePasswordViewModel** (
{++ 
[,, 	
Required,,	 
],, 
[-- 	
DataType--	 
(-- 
DataType-- 
.-- 
Password-- #
)--# $
]--$ %
[.. 	
Display..	 
(.. 
Name.. 
=.. 
$str.. *
)..* +
]..+ ,
public// 
string// 
OldPassword// !
{//" #
get//$ '
;//' (
set//) ,
;//, -
}//. /
[11 	
Required11	 
]11 
[22 	
StringLength22	 
(22 
$num22 
,22 
ErrorMessage22 '
=22( )
$str22* Y
,22Y Z
MinimumLength22[ h
=22i j
$num22k l
)22l m
]22m n
[33 	
DataType33	 
(33 
DataType33 
.33 
Password33 #
)33# $
]33$ %
[44 	
Display44	 
(44 
Name44 
=44 
$str44 &
)44& '
]44' (
public55 
string55 
NewPassword55 !
{55" #
get55$ '
;55' (
set55) ,
;55, -
}55. /
[77 	
DataType77	 
(77 
DataType77 
.77 
Password77 #
)77# $
]77$ %
[88 	
Display88	 
(88 
Name88 
=88 
$str88 .
)88. /
]88/ 0
[99 	
Compare99	 
(99 
$str99 
,99 
ErrorMessage99  ,
=99- .
$str99/ i
)99i j
]99j k
public:: 
string:: 
ConfirmPassword:: %
{::& '
get::( +
;::+ ,
set::- 0
;::0 1
}::2 3
};; 
public== 

class== #
AddPhoneNumberViewModel== (
{>> 
[?? 	
Required??	 
]?? 
[@@ 	
Phone@@	 
]@@ 
[AA 	
DisplayAA	 
(AA 
NameAA 
=AA 
$strAA &
)AA& '
]AA' (
publicBB 
stringBB 
NumberBB 
{BB 
getBB "
;BB" #
setBB$ '
;BB' (
}BB) *
}CC 
publicEE 

classEE &
VerifyPhoneNumberViewModelEE +
{FF 
[GG 	
RequiredGG	 
]GG 
[HH 	
DisplayHH	 
(HH 
NameHH 
=HH 
$strHH 
)HH 
]HH  
publicII 
stringII 
CodeII 
{II 
getII  
;II  !
setII" %
;II% &
}II' (
[KK 	
RequiredKK	 
]KK 
[LL 	
PhoneLL	 
]LL 
[MM 	
DisplayMM	 
(MM 
NameMM 
=MM 
$strMM &
)MM& '
]MM' (
publicNN 
stringNN 
PhoneNumberNN !
{NN" #
getNN$ '
;NN' (
setNN) ,
;NN, -
}NN. /
}OO 
publicQQ 

classQQ '
ConfigureTwoFactorViewModelQQ ,
{RR 
publicSS 
stringSS 
SelectedProviderSS &
{SS' (
getSS) ,
;SS, -
setSS. 1
;SS1 2
}SS3 4
publicTT 
ICollectionTT 
<TT 
SystemTT !
.TT! "
WebTT" %
.TT% &
MvcTT& )
.TT) *
SelectListItemTT* 8
>TT8 9
	ProvidersTT: C
{TTD E
getTTF I
;TTI J
setTTK N
;TTN O
}TTP Q
}UU 
}VV Ù
IC:\Users\burak\Source\Repos\mvcsonar\SonarQube\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str $
)$ %
]% &
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str &
)& '
]' (
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *ﬁ
9C:\Users\burak\Source\Repos\mvcsonar\SonarQube\Startup.cs
[ 
assembly 	
:	 
 
OwinStartupAttribute 
(  
typeof  &
(& '
	SonarQube' 0
.0 1
Startup1 8
)8 9
)9 :
]: ;
	namespace 	
	SonarQube
 
{ 
public 

partial 
class 
Startup  
{ 
public		 
void		 
Configuration		 !
(		! "
IAppBuilder		" -
app		. 1
)		1 2
{

 	
ConfigureAuth 
( 
app 
) 
; 
} 	
} 
} 