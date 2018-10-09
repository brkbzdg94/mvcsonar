�
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
} �
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
} �:
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
context	++y �
)
++� �
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
context	hh} �
)
hh� �
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
}mm �
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
} �
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
}DD ƕ
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
false	NN �
)
NN� �
;
NN� �
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
rememberBrowser	{{ �
:
{{� �
model
{{� �
.
{{� �
RememberBrowser
{{� �
)
{{� �
;
{{� �
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
�� 
SignInStatus
�� !
.
��! "
	LockedOut
��" +
:
��+ ,
return
�� 
View
�� 
(
��  
$str
��  )
)
��) *
;
��* +
case
�� 
SignInStatus
�� !
.
��! "
Failure
��" )
:
��) *
default
�� 
:
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
$str
��- /
,
��/ 0
$str
��1 @
)
��@ A
;
��A B
return
�� 
View
�� 
(
��  
model
��  %
)
��% &
;
��& '
}
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� 
Register
�� $
(
��$ %
)
��% &
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
Register
��( 0
(
��0 1
RegisterViewModel
��1 B
model
��C H
)
��H I
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
user
�� 
=
�� 
new
�� 
ApplicationUser
�� .
{
��/ 0
UserName
��1 9
=
��: ;
model
��< A
.
��A B
Email
��B G
,
��G H
Email
��I N
=
��O P
model
��Q V
.
��V W
Email
��W \
}
��] ^
;
��^ _
var
�� 
result
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
CreateAsync
��/ :
(
��: ;
user
��; ?
,
��? @
model
��A F
.
��F G
Password
��G O
)
��O P
;
��P Q
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� $
)
��$ %
{
�� 
await
�� 
SignInManager
�� '
.
��' (
SignInAsync
��( 3
(
��3 4
user
��4 8
,
��8 9
isPersistent
��: F
:
��F G
false
��G L
,
��L M
rememberBrowser
��N ]
:
��] ^
false
��^ c
)
��c d
;
��d e
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
$str
��5 ;
)
��; <
;
��< =
}
�� 
	AddErrors
�� 
(
�� 
result
��  
)
��  !
;
��! "
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ConfirmEmail
��( 4
(
��4 5
string
��5 ;
userId
��< B
,
��B C
string
��D J
code
��K O
)
��O P
{
�� 	
if
�� 
(
�� 
userId
�� 
==
�� 
null
�� 
||
�� !
code
��" &
==
��' )
null
��* .
)
��. /
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +
ConfirmEmailAsync
��+ <
(
��< =
userId
��= C
,
��C D
code
��E I
)
��I J
;
��J K
return
�� 
View
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� (
?
��) *
$str
��+ 9
:
��: ;
$str
��< C
)
��C D
;
��D E
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� 
ForgotPassword
�� *
(
��* +
)
��+ ,
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ForgotPassword
��( 6
(
��6 7%
ForgotPasswordViewModel
��7 N
model
��O T
)
��T U
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
user
�� 
=
�� 
await
��  
UserManager
��! ,
.
��, -
FindByNameAsync
��- <
(
��< =
model
��= B
.
��B C
Email
��C H
)
��H I
;
��I J
if
�� 
(
�� 
user
�� 
==
�� 
null
��  
||
��! #
!
��$ %
(
��% &
await
��& +
UserManager
��, 7
.
��7 8#
IsEmailConfirmedAsync
��8 M
(
��M N
user
��N R
.
��R S
Id
��S U
)
��U V
)
��V W
)
��W X
{
�� 
return
�� 
View
�� 
(
��  
$str
��  <
)
��< =
;
��= >
}
�� 
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� (
ForgotPasswordConfirmation
�� 6
(
��6 7
)
��7 8
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� 
ResetPassword
�� )
(
��) *
string
��* 0
code
��1 5
)
��5 6
{
�� 	
return
�� 
code
�� 
==
�� 
null
�� 
?
��  !
View
��" &
(
��& '
$str
��' .
)
��. /
:
��0 1
View
��2 6
(
��6 7
)
��7 8
;
��8 9
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ResetPassword
��( 5
(
��5 6$
ResetPasswordViewModel
��6 L
model
��M R
)
��R S
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
model
�� !
)
��! "
;
��" #
}
�� 
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByNameAsync
��) 8
(
��8 9
model
��9 >
.
��> ?
Email
��? D
)
��D E
;
��E F
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( C
,
��C D
$str
��E N
)
��N O
;
��O P
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* + 
ResetPasswordAsync
��+ =
(
��= >
user
��> B
.
��B C
Id
��C E
,
��E F
model
��G L
.
��L M
Code
��M Q
,
��Q R
model
��S X
.
��X Y
Password
��Y a
)
��a b
;
��b c
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( C
,
��C D
$str
��E N
)
��N O
;
��O P
}
�� 
	AddErrors
�� 
(
�� 
result
�� 
)
�� 
;
�� 
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� '
ResetPasswordConfirmation
�� 5
(
��5 6
)
��6 7
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
ExternalLogin
�� )
(
��) *
string
��* 0
provider
��1 9
,
��9 :
string
��; A
	returnUrl
��B K
)
��K L
{
�� 	
return
�� 
new
�� 
ChallengeResult
�� &
(
��& '
provider
��' /
,
��/ 0
Url
��1 4
.
��4 5
Action
��5 ;
(
��; <
$str
��< S
,
��S T
$str
��U ^
,
��^ _
new
��` c
{
��d e
	ReturnUrl
��f o
=
��p q
	returnUrl
��r {
}
��| }
)
��} ~
)
��~ 
;�� �
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
SendCode
��( 0
(
��0 1
string
��1 7
	returnUrl
��8 A
,
��A B
bool
��C G

rememberMe
��H R
)
��R S
{
�� 	
var
�� 
userId
�� 
=
�� 
await
�� 
SignInManager
�� ,
.
��, -$
GetVerifiedUserIdAsync
��- C
(
��C D
)
��D E
;
��E F
if
�� 
(
�� 
userId
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
var
�� 
userFactors
�� 
=
�� 
await
�� #
UserManager
��$ /
.
��/ 0-
GetValidTwoFactorProvidersAsync
��0 O
(
��O P
userId
��P V
)
��V W
;
��W X
var
�� 
factorOptions
�� 
=
�� 
userFactors
��  +
.
��+ ,
Select
��, 2
(
��2 3
purpose
��3 :
=>
��; =
new
��> A
SelectListItem
��B P
{
��Q R
Text
��S W
=
��X Y
purpose
��Z a
,
��a b
Value
��c h
=
��i j
purpose
��k r
}
��s t
)
��t u
.
��u v
ToList
��v |
(
��| }
)
��} ~
;
��~ 
return
�� 
View
�� 
(
�� 
new
�� 
SendCodeViewModel
�� -
{
��. /
	Providers
��0 9
=
��: ;
factorOptions
��< I
,
��I J
	ReturnUrl
��K T
=
��U V
	returnUrl
��W `
,
��` a

RememberMe
��b l
=
��m n

rememberMe
��o y
}
��z {
)
��{ |
;
��| }
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
SendCode
��( 0
(
��0 1
SendCodeViewModel
��1 B
model
��C H
)
��H I
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
await
�� 
SignInManager
�� $
.
��$ %$
SendTwoFactorCodeAsync
��% ;
(
��; <
model
��< A
.
��A B
SelectedProvider
��B R
)
��R S
)
��S T
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ 0
,
��0 1
new
��2 5
{
��6 7
Provider
��8 @
=
��A B
model
��C H
.
��H I
SelectedProvider
��I Y
,
��Y Z
	ReturnUrl
��[ d
=
��e f
model
��g l
.
��l m
	ReturnUrl
��m v
,
��v w

RememberMe��x �
=��� �
model��� �
.��� �

RememberMe��� �
}��� �
)��� �
;��� �
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '#
ExternalLoginCallback
��( =
(
��= >
string
��> D
	returnUrl
��E N
)
��N O
{
�� 	
var
�� 
	loginInfo
�� 
=
�� 
await
�� !#
AuthenticationManager
��" 7
.
��7 8'
GetExternalLoginInfoAsync
��8 Q
(
��Q R
)
��R S
;
��S T
if
�� 
(
�� 
	loginInfo
�� 
==
�� 
null
�� !
)
��! "
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
SignInManager
�� ,
.
��, -!
ExternalSignInAsync
��- @
(
��@ A
	loginInfo
��A J
,
��J K
isPersistent
��L X
:
��X Y
false
��Z _
)
��_ `
;
��` a
switch
�� 
(
�� 
result
�� 
)
�� 
{
�� 
case
�� 
SignInStatus
�� !
.
��! "
Success
��" )
:
��) *
return
�� 
RedirectToLocal
�� *
(
��* +
	returnUrl
��+ 4
)
��4 5
;
��5 6
case
�� 
SignInStatus
�� !
.
��! "
	LockedOut
��" +
:
��+ ,
return
�� 
View
�� 
(
��  
$str
��  )
)
��) *
;
��* +
case
�� 
SignInStatus
�� !
.
��! ""
RequiresVerification
��" 6
:
��6 7
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 6
,
��6 7
new
��8 ;
{
��< =
	ReturnUrl
��> G
=
��H I
	returnUrl
��J S
,
��S T

RememberMe
��U _
=
��` a
false
��b g
}
��h i
)
��i j
;
��j k
case
�� 
SignInStatus
�� !
.
��! "
Failure
��" )
:
��) *
default
�� 
:
�� 
ViewBag
�� 
.
�� 
	ReturnUrl
�� %
=
��& '
	returnUrl
��( 1
;
��1 2
ViewBag
�� 
.
�� 
LoginProvider
�� )
=
��* +
	loginInfo
��, 5
.
��5 6
Login
��6 ;
.
��; <
LoginProvider
��< I
;
��I J
return
�� 
View
�� 
(
��  
$str
��  ;
,
��; <
new
��= @0
"ExternalLoginConfirmationViewModel
��A c
{
��d e
Email
��f k
=
��l m
	loginInfo
��n w
.
��w x
Email
��x }
}
��~ 
)�� �
;��� �
}
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	
AllowAnonymous
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& ''
ExternalLoginConfirmation
��( A
(
��A B0
"ExternalLoginConfirmationViewModel
��B d
model
��e j
,
��j k
string
��l r
	returnUrl
��s |
)
��| }
{
�� 	
if
�� 
(
�� 
User
�� 
.
�� 
Identity
�� 
.
�� 
IsAuthenticated
�� -
)
��- .
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 9
)
��9 :
;
��: ;
}
�� 
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
info
�� 
=
�� 
await
��  #
AuthenticationManager
��! 6
.
��6 7'
GetExternalLoginInfoAsync
��7 P
(
��P Q
)
��Q R
;
��R S
if
�� 
(
�� 
info
�� 
==
�� 
null
��  
)
��  !
{
�� 
return
�� 
View
�� 
(
��  
$str
��  6
)
��6 7
;
��7 8
}
�� 
var
�� 
user
�� 
=
�� 
new
�� 
ApplicationUser
�� .
{
��/ 0
UserName
��1 9
=
��: ;
model
��< A
.
��A B
Email
��B G
,
��G H
Email
��I N
=
��O P
model
��Q V
.
��V W
Email
��W \
}
��] ^
;
��^ _
var
�� 
result
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
CreateAsync
��/ :
(
��: ;
user
��; ?
)
��? @
;
��@ A
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� $
)
��$ %
{
�� 
result
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
AddLoginAsync
��/ <
(
��< =
user
��= A
.
��A B
Id
��B D
,
��D E
info
��F J
.
��J K
Login
��K P
)
��P Q
;
��Q R
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� (
)
��( )
{
�� 
await
�� 
SignInManager
�� +
.
��+ ,
SignInAsync
��, 7
(
��7 8
user
��8 <
,
��< =
isPersistent
��> J
:
��J K
false
��L Q
,
��Q R
rememberBrowser
��S b
:
��b c
false
��d i
)
��i j
;
��j k
return
�� 
RedirectToLocal
�� .
(
��. /
	returnUrl
��/ 8
)
��8 9
;
��9 :
}
�� 
}
�� 
	AddErrors
�� 
(
�� 
result
��  
)
��  !
;
��! "
}
�� 
ViewBag
�� 
.
�� 
	ReturnUrl
�� 
=
�� 
	returnUrl
��  )
;
��) *
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
LogOff
�� "
(
��" #
)
��# $
{
�� 	#
AuthenticationManager
�� !
.
��! "
SignOut
��" )
(
��) *(
DefaultAuthenticationTypes
��* D
.
��D E
ApplicationCookie
��E V
)
��V W
;
��W X
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 3
)
��3 4
;
��4 5
}
�� 	
[
�� 	
AllowAnonymous
��	 
]
�� 
public
�� 
ActionResult
�� "
ExternalLoginFailure
�� 0
(
��0 1
)
��1 2
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
	protected
�� 
override
�� 
void
�� 
Dispose
��  '
(
��' (
bool
��( ,
	disposing
��- 6
)
��6 7
{
�� 	
if
�� 
(
�� 
	disposing
�� 
)
�� 
{
�� 
if
�� 
(
�� 
_userManager
��  
!=
��! #
null
��$ (
)
��( )
{
�� 
_userManager
��  
.
��  !
Dispose
��! (
(
��( )
)
��) *
;
��* +
_userManager
��  
=
��! "
null
��# '
;
��' (
}
�� 
if
�� 
(
�� 
_signInManager
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
_signInManager
�� "
.
��" #
Dispose
��# *
(
��* +
)
��+ ,
;
��, -
_signInManager
�� "
=
��# $
null
��% )
;
��) *
}
�� 
}
�� 
base
�� 
.
�� 
Dispose
�� 
(
�� 
	disposing
�� "
)
��" #
;
��# $
}
�� 	
private
�� 
const
�� 
string
�� 
XsrfKey
�� $
=
��% &
$str
��' /
;
��/ 0
private
�� $
IAuthenticationManager
�� &#
AuthenticationManager
��' <
{
�� 	
get
�� 
{
�� 
return
�� 
HttpContext
�� "
.
��" #
GetOwinContext
��# 1
(
��1 2
)
��2 3
.
��3 4
Authentication
��4 B
;
��B C
}
�� 
}
�� 	
private
�� 
void
�� 
	AddErrors
�� 
(
�� 
IdentityResult
�� -
result
��. 4
)
��4 5
{
�� 	
foreach
�� 
(
�� 
var
�� 
error
�� 
in
�� !
result
��" (
.
��( )
Errors
��) /
)
��/ 0
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) +
,
��+ ,
error
��- 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
private
�� 
ActionResult
�� 
RedirectToLocal
�� ,
(
��, -
string
��- 3
	returnUrl
��4 =
)
��= >
{
�� 	
if
�� 
(
�� 
Url
�� 
.
�� 

IsLocalUrl
�� 
(
�� 
	returnUrl
�� (
)
��( )
)
��) *
{
�� 
return
�� 
Redirect
�� 
(
��  
	returnUrl
��  )
)
��) *
;
��* +
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 3
)
��3 4
;
��4 5
}
�� 	
internal
�� 
class
�� 
ChallengeResult
�� &
:
��' ($
HttpUnauthorizedResult
��) ?
{
�� 	
public
�� 
ChallengeResult
�� "
(
��" #
string
��# )
provider
��* 2
,
��2 3
string
��4 :
redirectUri
��; F
)
��F G
:
�� 
this
�� 
(
�� 
provider
�� 
,
��  
redirectUri
��! ,
,
��, -
null
��. 2
)
��2 3
{
�� 
}
�� 
public
�� 
ChallengeResult
�� "
(
��" #
string
��# )
provider
��* 2
,
��2 3
string
��4 :
redirectUri
��; F
,
��F G
string
��H N
userId
��O U
)
��U V
{
�� 
LoginProvider
�� 
=
�� 
provider
��  (
;
��( )
RedirectUri
�� 
=
�� 
redirectUri
�� )
;
��) *
UserId
�� 
=
�� 
userId
�� 
;
��  
}
�� 
public
�� 
string
�� 
LoginProvider
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
RedirectUri
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
UserId
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
override
�� 
void
��  
ExecuteResult
��! .
(
��. /
ControllerContext
��/ @
context
��A H
)
��H I
{
�� 
var
�� 

properties
�� 
=
��  
new
��! $&
AuthenticationProperties
��% =
{
��> ?
RedirectUri
��@ K
=
��L M
RedirectUri
��N Y
}
��Z [
;
��[ \
if
�� 
(
�� 
UserId
�� 
!=
�� 
null
�� "
)
��" #
{
�� 

properties
�� 
.
�� 

Dictionary
�� )
[
��) *
XsrfKey
��* 1
]
��1 2
=
��3 4
UserId
��5 ;
;
��; <
}
�� 
context
�� 
.
�� 
HttpContext
�� #
.
��# $
GetOwinContext
��$ 2
(
��2 3
)
��3 4
.
��4 5
Authentication
��5 C
.
��C D
	Challenge
��D M
(
��M N

properties
��N X
,
��X Y
LoginProvider
��Z g
)
��g h
;
��h i
}
�� 
}
�� 	
}
�� 
}�� �
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
}&& ��
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
providerKey	UUx �
)
UU� �
)
UU� �
;
UU� �
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
�� 
UserManager
�� !
.
��! "

SmsService
��" ,
.
��, -
	SendAsync
��- 6
(
��6 7
message
��7 >
)
��> ?
;
��? @
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ 7
,
��7 8
new
��9 <
{
��= >
PhoneNumber
��? J
=
��K L
model
��M R
.
��R S
Number
��S Y
}
��Z [
)
��[ \
;
��\ ]
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '+
EnableTwoFactorAuthentication
��( E
(
��E F
)
��F G
{
�� 	
await
�� 
UserManager
�� 
.
�� &
SetTwoFactorEnabledAsync
�� 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
,
��P Q
true
��R V
)
��V W
;
��W X
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
await
�� 
SignInManager
�� #
.
��# $
SignInAsync
��$ /
(
��/ 0
user
��0 4
,
��4 5
isPersistent
��6 B
:
��B C
false
��D I
,
��I J
rememberBrowser
��K Z
:
��Z [
false
��\ a
)
��a b
;
��b c
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 5
)
��5 6
;
��6 7
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& ',
DisableTwoFactorAuthentication
��( F
(
��F G
)
��G H
{
�� 	
await
�� 
UserManager
�� 
.
�� &
SetTwoFactorEnabledAsync
�� 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
,
��P Q
false
��R W
)
��W X
;
��X Y
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
await
�� 
SignInManager
�� #
.
��# $
SignInAsync
��$ /
(
��/ 0
user
��0 4
,
��4 5
isPersistent
��6 B
:
��B C
false
��D I
,
��I J
rememberBrowser
��K Z
:
��Z [
false
��\ a
)
��a b
;
��b c
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
$str
��- 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
VerifyPhoneNumber
��( 9
(
��9 :
string
��: @
phoneNumber
��A L
)
��L M
{
�� 	
var
�� 
code
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )1
#GenerateChangePhoneNumberTokenAsync
��) L
(
��L M
User
��M Q
.
��Q R
Identity
��R Z
.
��Z [
	GetUserId
��[ d
(
��d e
)
��e f
,
��f g
phoneNumber
��h s
)
��s t
;
��t u
return
�� 
phoneNumber
�� 
==
�� !
null
��" &
?
��' (
View
��) -
(
��- .
$str
��. 5
)
��5 6
:
��7 8
View
��9 =
(
��= >
new
��> A(
VerifyPhoneNumberViewModel
��B \
{
��] ^
PhoneNumber
��_ j
=
��k l
phoneNumber
��m x
}
��y z
)
��z {
;
��{ |
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
VerifyPhoneNumber
��( 9
(
��9 :(
VerifyPhoneNumberViewModel
��: T
model
��U Z
)
��Z [
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
model
�� !
)
��! "
;
��" #
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +$
ChangePhoneNumberAsync
��+ A
(
��A B
User
��B F
.
��F G
Identity
��G O
.
��O P
	GetUserId
��P Y
(
��Y Z
)
��Z [
,
��[ \
model
��] b
.
��b c
PhoneNumber
��c n
,
��n o
model
��p u
.
��u v
Code
��v z
)
��z {
;
��{ |
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
var
�� 
user
�� 
=
�� 
await
��  
UserManager
��! ,
.
��, -
FindByIdAsync
��- :
(
��: ;
User
��; ?
.
��? @
Identity
��@ H
.
��H I
	GetUserId
��I R
(
��R S
)
��S T
)
��T U
;
��U V
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  
)
��  !
{
�� 
await
�� 
SignInManager
�� '
.
��' (
SignInAsync
��( 3
(
��3 4
user
��4 8
,
��8 9
isPersistent
��: F
:
��F G
false
��H M
,
��M N
rememberBrowser
��O ^
:
��^ _
false
��` e
)
��e f
;
��f g
}
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
new
��1 4
{
��5 6
Message
��7 >
=
��? @
ManageMessageId
��A P
.
��P Q
AddPhoneSuccess
��Q `
}
��a b
)
��b c
;
��c d
}
�� 

ModelState
�� 
.
�� 
AddModelError
�� $
(
��$ %
$str
��% '
,
��' (
$str
��) A
)
��A B
;
��B C
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
RemovePhoneNumber
��( 9
(
��9 :
)
��: ;
{
�� 	
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +!
SetPhoneNumberAsync
��+ >
(
��> ?
User
��? C
.
��C D
Identity
��D L
.
��L M
	GetUserId
��M V
(
��V W
)
��W X
,
��X Y
null
��Z ^
)
��^ _
;
��_ `
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� !
)
��! "
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
new
��1 4
{
��5 6
Message
��7 >
=
��? @
ManageMessageId
��A P
.
��P Q
Error
��Q V
}
��W X
)
��X Y
;
��Y Z
}
�� 
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
await
�� 
SignInManager
�� #
.
��# $
SignInAsync
��$ /
(
��/ 0
user
��0 4
,
��4 5
isPersistent
��6 B
:
��B C
false
��D I
,
��I J
rememberBrowser
��K Z
:
��Z [
false
��\ a
)
��a b
;
��b c
}
�� 
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ +
,
��+ ,
new
��- 0
{
��1 2
Message
��3 :
=
��; <
ManageMessageId
��= L
.
��L M 
RemovePhoneSuccess
��M _
}
��` a
)
��a b
;
��b c
}
�� 	
public
�� 
ActionResult
�� 
ChangePassword
�� *
(
��* +
)
��+ ,
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ChangePassword
��( 6
(
��6 7%
ChangePasswordViewModel
��7 N
model
��O T
)
��T U
{
�� 	
if
�� 
(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� #
)
��# $
{
�� 
return
�� 
View
�� 
(
�� 
model
�� !
)
��! "
;
��" #
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +!
ChangePasswordAsync
��+ >
(
��> ?
User
��? C
.
��C D
Identity
��D L
.
��L M
	GetUserId
��M V
(
��V W
)
��W X
,
��X Y
model
��Z _
.
��_ `
OldPassword
��` k
,
��k l
model
��m r
.
��r s
NewPassword
��s ~
)
��~ 
;�� �
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
var
�� 
user
�� 
=
�� 
await
��  
UserManager
��! ,
.
��, -
FindByIdAsync
��- :
(
��: ;
User
��; ?
.
��? @
Identity
��@ H
.
��H I
	GetUserId
��I R
(
��R S
)
��S T
)
��T U
;
��U V
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  
)
��  !
{
�� 
await
�� 
SignInManager
�� '
.
��' (
SignInAsync
��( 3
(
��3 4
user
��4 8
,
��8 9
isPersistent
��: F
:
��F G
false
��H M
,
��M N
rememberBrowser
��O ^
:
��^ _
false
��` e
)
��e f
;
��f g
}
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
new
��1 4
{
��5 6
Message
��7 >
=
��? @
ManageMessageId
��A P
.
��P Q#
ChangePasswordSuccess
��Q f
}
��g h
)
��h i
;
��i j
}
�� 
	AddErrors
�� 
(
�� 
result
�� 
)
�� 
;
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
ActionResult
�� 
SetPassword
�� '
(
��' (
)
��( )
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
SetPassword
��( 3
(
��3 4"
SetPasswordViewModel
��4 H
model
��I N
)
��N O
{
�� 	
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
result
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
AddPasswordAsync
��/ ?
(
��? @
User
��@ D
.
��D E
Identity
��E M
.
��M N
	GetUserId
��N W
(
��W X
)
��X Y
,
��Y Z
model
��[ `
.
��` a
NewPassword
��a l
)
��l m
;
��m n
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� $
)
��$ %
{
�� 
var
�� 
user
�� 
=
�� 
await
�� $
UserManager
��% 0
.
��0 1
FindByIdAsync
��1 >
(
��> ?
User
��? C
.
��C D
Identity
��D L
.
��L M
	GetUserId
��M V
(
��V W
)
��W X
)
��X Y
;
��Y Z
if
�� 
(
�� 
user
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
await
�� 
SignInManager
�� +
.
��+ ,
SignInAsync
��, 7
(
��7 8
user
��8 <
,
��< =
isPersistent
��> J
:
��J K
false
��L Q
,
��Q R
rememberBrowser
��S b
:
��b c
false
��d i
)
��i j
;
��j k
}
�� 
return
�� 
RedirectToAction
�� +
(
��+ ,
$str
��, 3
,
��3 4
new
��5 8
{
��9 :
Message
��; B
=
��C D
ManageMessageId
��E T
.
��T U 
SetPasswordSuccess
��U g
}
��h i
)
��i j
;
��j k
}
�� 
	AddErrors
�� 
(
�� 
result
��  
)
��  !
;
��! "
}
�� 
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
ManageLogins
��( 4
(
��4 5
ManageMessageId
��5 D
?
��D E
message
��F M
)
��M N
{
�� 	
ViewBag
�� 
.
�� 
StatusMessage
�� !
=
��" #
message
�� 
==
�� 
ManageMessageId
�� *
.
��* + 
RemoveLoginSuccess
��+ =
?
��> ?
$str
��@ a
:
�� 
message
�� 
==
�� 
ManageMessageId
�� ,
.
��, -
Error
��- 2
?
��3 4
$str
��5 M
:
�� 
$str
�� 
;
�� 
var
�� 
user
�� 
=
�� 
await
�� 
UserManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
User
��7 ;
.
��; <
Identity
��< D
.
��D E
	GetUserId
��E N
(
��N O
)
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
View
�� 
(
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 
var
�� 

userLogins
�� 
=
�� 
await
�� "
UserManager
��# .
.
��. /
GetLoginsAsync
��/ =
(
��= >
User
��> B
.
��B C
Identity
��C K
.
��K L
	GetUserId
��L U
(
��U V
)
��V W
)
��W X
;
��X Y
var
�� 
otherLogins
�� 
=
�� #
AuthenticationManager
�� 3
.
��3 4,
GetExternalAuthenticationTypes
��4 R
(
��R S
)
��S T
.
��T U
Where
��U Z
(
��Z [
auth
��[ _
=>
��` b

userLogins
��c m
.
��m n
All
��n q
(
��q r
ul
��r t
=>
��u w
auth
��x |
.
��| }!
AuthenticationType��} �
!=��� �
ul��� �
.��� �
LoginProvider��� �
)��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
ViewBag
�� 
.
�� 
ShowRemoveButton
�� $
=
��% &
user
��' +
.
��+ ,
PasswordHash
��, 8
!=
��9 ;
null
��< @
||
��A C

userLogins
��D N
.
��N O
Count
��O T
>
��U V
$num
��W X
;
��X Y
return
�� 
View
�� 
(
�� 
new
�� #
ManageLoginsViewModel
�� 1
{
�� 
CurrentLogins
�� 
=
�� 

userLogins
��  *
,
��* +
OtherLogins
�� 
=
�� 
otherLogins
�� )
}
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
[
�� 	&
ValidateAntiForgeryToken
��	 !
]
��! "
public
�� 
ActionResult
�� 
	LinkLogin
�� %
(
��% &
string
��& ,
provider
��- 5
)
��5 6
{
�� 	
return
�� 
new
�� 
AccountController
�� (
.
��( )
ChallengeResult
��) 8
(
��8 9
provider
��9 A
,
��A B
Url
��C F
.
��F G
Action
��G M
(
��M N
$str
��N a
,
��a b
$str
��c k
)
��k l
,
��l m
User
��n r
.
��r s
Identity
��s {
.
��{ |
	GetUserId��| �
(��� �
)��� �
)��� �
;��� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
LinkLoginCallback
��( 9
(
��9 :
)
��: ;
{
�� 	
var
�� 
	loginInfo
�� 
=
�� 
await
�� !#
AuthenticationManager
��" 7
.
��7 8'
GetExternalLoginInfoAsync
��8 Q
(
��Q R
XsrfKey
��R Y
,
��Y Z
User
��[ _
.
��_ `
Identity
��` h
.
��h i
	GetUserId
��i r
(
��r s
)
��s t
)
��t u
;
��u v
if
�� 
(
�� 
	loginInfo
�� 
==
�� 
null
�� !
)
��! "
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( 6
,
��6 7
new
��8 ;
{
��< =
Message
��> E
=
��F G
ManageMessageId
��H W
.
��W X
Error
��X ]
}
��^ _
)
��_ `
;
��` a
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
UserManager
�� *
.
��* +
AddLoginAsync
��+ 8
(
��8 9
User
��9 =
.
��= >
Identity
��> F
.
��F G
	GetUserId
��G P
(
��P Q
)
��Q R
,
��R S
	loginInfo
��T ]
.
��] ^
Login
��^ c
)
��c d
;
��d e
return
�� 
result
�� 
.
�� 
	Succeeded
�� #
?
��$ %
RedirectToAction
��& 6
(
��6 7
$str
��7 E
)
��E F
:
��G H
RedirectToAction
��I Y
(
��Y Z
$str
��Z h
,
��h i
new
��j m
{
��n o
Message
��p w
=
��x y
ManageMessageId��z �
.��� �
Error��� �
}��� �
)��� �
;��� �
}
�� 	
	protected
�� 
override
�� 
void
�� 
Dispose
��  '
(
��' (
bool
��( ,
	disposing
��- 6
)
��6 7
{
�� 	
if
�� 
(
�� 
	disposing
�� 
&&
�� 
_userManager
�� )
!=
��* ,
null
��- 1
)
��1 2
{
�� 
_userManager
�� 
.
�� 
Dispose
�� $
(
��$ %
)
��% &
;
��& '
_userManager
�� 
=
�� 
null
�� #
;
��# $
}
�� 
base
�� 
.
�� 
Dispose
�� 
(
�� 
	disposing
�� "
)
��" #
;
��# $
}
�� 	
private
�� 
const
�� 
string
�� 
XsrfKey
�� $
=
��% &
$str
��' /
;
��/ 0
private
�� $
IAuthenticationManager
�� &#
AuthenticationManager
��' <
{
�� 	
get
�� 
{
�� 
return
�� 
HttpContext
�� "
.
��" #
GetOwinContext
��# 1
(
��1 2
)
��2 3
.
��3 4
Authentication
��4 B
;
��B C
}
�� 
}
�� 	
private
�� 
void
�� 
	AddErrors
�� 
(
�� 
IdentityResult
�� -
result
��. 4
)
��4 5
{
�� 	
foreach
�� 
(
�� 
var
�� 
error
�� 
in
�� !
result
��" (
.
��( )
Errors
��) /
)
��/ 0
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� (
(
��( )
$str
��) +
,
��+ ,
error
��- 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
private
�� 
bool
�� 
HasPassword
��  
(
��  !
)
��! "
{
�� 	
var
�� 
user
�� 
=
�� 
UserManager
�� "
.
��" #
FindById
��# +
(
��+ ,
User
��, 0
.
��0 1
Identity
��1 9
.
��9 :
	GetUserId
��: C
(
��C D
)
��D E
)
��E F
;
��F G
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
return
�� 
user
�� 
.
�� 
PasswordHash
�� (
!=
��) +
null
��, 0
;
��0 1
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
bool
�� 
HasPhoneNumber
�� #
(
��# $
)
��$ %
{
�� 	
var
�� 
user
�� 
=
�� 
UserManager
�� "
.
��" #
FindById
��# +
(
��+ ,
User
��, 0
.
��0 1
Identity
��1 9
.
��9 :
	GetUserId
��: C
(
��C D
)
��D E
)
��E F
;
��F G
if
�� 
(
�� 
user
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
return
�� 
user
�� 
.
�� 
PhoneNumber
�� '
!=
��( *
null
��+ /
;
��/ 0
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
enum
�� 
ManageMessageId
�� #
{
�� 	
AddPhoneSuccess
�� 
,
�� #
ChangePasswordSuccess
�� !
,
��! "!
SetTwoFactorSuccess
�� 
,
��   
SetPasswordSuccess
�� 
,
��  
RemoveLoginSuccess
�� 
,
��  
RemovePhoneSuccess
�� 
,
�� 
Error
�� 
}
�� 	
}
�� 
}�� �
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
} �
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
}22 �F
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
}pp �
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
}!! �8
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
}VV �
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
]##) *�
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