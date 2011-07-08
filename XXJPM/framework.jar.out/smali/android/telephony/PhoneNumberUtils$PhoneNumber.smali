.class public Landroid/telephony/PhoneNumberUtils$PhoneNumber;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumber"
.end annotation


# static fields
.field private static final COUNTRY_CODE_CHINA:Ljava/lang/String; = "86"

.field private static COUNTRY_PATTERN_STARTS_WITH_1:Ljava/util/regex/Pattern;

.field private static PREFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static final countryCode2Name:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAreaCode:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mEffectiveNumber:Ljava/lang/String;

.field private mOriginalPhoneNumber:Ljava/lang/String;

.field private mPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    .line 2379
    const-string v0, "^(17901|17911|17951|17961|12593|12520|10657|10656|10650|10651|10659)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 2395
    const-string v0, "^(242|246|264|268|345|441|664|670|671|758|784|787|809|876|890)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->COUNTRY_PATTERN_STARTS_WITH_1:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "phoneNumber"

    .prologue
    const-string v5, "233"

    const-string v4, ""

    .line 2356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2122
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2123
    .local v0, res:Landroid/content/res/Resources;
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1"

	#akki: United States / Canada
    const v3, 0x104041a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1246"

	#akki: Barbados
    const v3, 0x1040432

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2125
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1264"

	#akki: Anguilla
    const v3, 0x1040426

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2126
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1268"

	#akki: Antigua and Barbuda
    const v3, 0x1040428

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2127
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1345"

	#akki: Cayman Islands
    const v3, 0x1040446

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1441"

	#akki: Bermuda
    const v3, 0x1040437

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1664"

	#akki: Montserrat
    const v3, 0x10404a3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1670"

	#akki: Northern Mariana Islands
    const v3, 0x10404b2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1671"

	#akki: Guam
    const v3, 0x104046e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2132
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1758"

	#akki: Saint Lucia
    const v3, 0x10404c7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2133
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1784"

	#akki: Saint Vincent and the Grenadines
    const v3, 0x10404ca

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2134
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1787"

	#akki: Puerto Rico
    const v3, 0x10404bf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1809"

	#akki: Dominican Republic
    const v3, 0x1040457

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2136
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1876"

	#akki: Jamaica
    const v3, 0x1040480

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2137
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1890"

	#akki: null
    const v3, 0x104041a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "20"

	#akki: Egypt
    const v3, 0x1040459

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "212"

	#akki: Morocco
    const v3, 0x10404a4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2140
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "213"

	#akki: Algeria
    const v3, 0x1040422

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "216"

	#akki: Tunisia
    const v3, 0x10404eb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "218"

	#akki: Libya
    const v3, 0x104048d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2143
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "220"

	#akki: Gambia
    const v3, 0x1040466

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2144
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "221"

	#akki: Senegal
    const v3, 0x10404cf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "223"

	#akki: Mali
    const v3, 0x1040497

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2146
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "224"

	#akki: Guinea
    const v3, 0x104045b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "225"

	#akki: Ivory Coast
    const v3, 0x104047f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2148
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "226"

	#akki: Burkina Faso
    const v3, 0x1040440

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2149
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "227"

	#akki: Niger
    const v3, 0x10404ae

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "228"

	#akki: Togo
    const v3, 0x10404e7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "229"

	#akki: Benin
    const v3, 0x1040436

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "230"

	#akki: Mauritius
    const v3, 0x104049b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "231"

	#akki: Liberia
    const v3, 0x104048c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "232"

	#akki: Sierra Leone
    const v3, 0x10404d2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2155
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "233"

	#akki: Ghana
    const v2, 0x1040469

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "233"

	#akki: Ghana
    const v2, 0x1040469

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "234"

	#akki: Nigeria
    const v3, 0x10404af

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2158
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "235"

	#akki: Chad
    const v3, 0x1040448

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2159
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "236"

	#akki: Central African Republic
    const v3, 0x1040447

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "237"

	#akki: Cameroon
    const v3, 0x1040444

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "239"

	#akki: Sao Tome and Principe
    const v3, 0x10404cd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "241"

	#akki: Gabon
    const v3, 0x1040465

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2163
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "242"

	#akki: Republic of the Congo
    const v3, 0x1040453

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2164
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "243"

	#akki: Democratic Republic of the Congo
    const v3, 0x1040453

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2165
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "244"

	#akki: Angola
    const v3, 0x1040425

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2166
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "247"

	#akki: Ascension Island
    const v3, 0x10404fe

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2167
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "248"

	#akki: Seychelles
    const v3, 0x10404d1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2168
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "249"

	#akki: Sudan
    const v3, 0x10404dc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2169
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "251"

	#akki: Ethiopia
    const v3, 0x104045e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2170
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "252"

	#akki: Somalia
    const v3, 0x10404d7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2171
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "253"

	#akki: Djibouti
    const v3, 0x1040455

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2172
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "254"

	#akki: Kenya
    const v3, 0x1040484

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2173
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "255"

	#akki: Tanzania
    const v3, 0x10404e4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2174
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "256"

	#akki: Uganda
    const v3, 0x10404f0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2175
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "257"

	#akki: Burundi
    const v3, 0x1040442

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2176
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "258"

	#akki: Mozambique
    const v3, 0x10404a5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2177
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "260"

	#akki: Zambia
    const v3, 0x10404fc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "261"

	#akki: Madagascar
    const v3, 0x1040493

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2179
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "262"

	#akki: Mayotte
    const v3, 0x104049c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "263"

	#akki: Zimbabwe
    const v3, 0x10404fd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2181
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "264"

	#akki: Namibia
    const v3, 0x10404a6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2182
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "265"

	#akki: Malawi
    const v3, 0x1040494

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2183
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "266"

	#akki: Lesotho
    const v3, 0x104048b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2184
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "267"

	#akki: Botswana
    const v3, 0x104043b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2185
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "268"

	#akki: Swaziland
    const v3, 0x10404de

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2186
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "27"

	#akki: South Africa
    const v3, 0x10404d8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2187
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "30"

	#akki: Greece
    const v3, 0x104046b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2188
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "31"

	#akki: Netherlands
    const v3, 0x10404a9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2189
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "327"

	#akki: null
    const v3, 0x104041a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "32"

	#akki: Belgium
    const v3, 0x1040434

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2191
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "331"

	#akki: null
    const v3, 0x104041a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "33"

	#akki: France
    const v3, 0x1040463

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2193
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "34"

	#akki: Spain
    const v3, 0x10404da

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2194
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "350"

	#akki: Gibraltar
    const v3, 0x104046a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2195
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "351"

	#akki: Portugal
    const v3, 0x10404be

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2196
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "352"

	#akki: Luxembourg
    const v3, 0x1040490

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "353"

	#akki: Ireland
    const v3, 0x104047c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2198
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "354"

	#akki: IcelandIcelandIcelandIceland IS /
    const v3, 0x1040477

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2199
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "355"

	#akki: Albania
    const v3, 0x1040421

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2200
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "356"

	#akki: Malta
    const v3, 0x1040498

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2201
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "357"

	#akki: Cyprus
    const v3, 0x1040451

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2202
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "358"

	#akki: Finland
    const v3, 0x1040462

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2203
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "359"

	#akki: Bulgaria
    const v3, 0x104043f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "36"

	#akki: Hungary
    const v3, 0x1040476

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2205
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "370"

	#akki: Lithuania
    const v3, 0x104048f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2206
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "371"

	#akki: Latvia
    const v3, 0x1040489

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2207
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "372"

	#akki: Estonia
    const v3, 0x104045d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2208
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "373"

	#akki: Moldova
    const v3, 0x104049f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2209
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "374"

	#akki: Armenia
    const v3, 0x104042a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "375"

	#akki: Belarus
    const v3, 0x1040433

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2211
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "376"

	#akki: Andorra
    const v3, 0x1040424

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "377"

	#akki: Monaco
    const v3, 0x10404a0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "378"

	#akki: San Marino
    const v3, 0x10404cc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "380"

	#akki: Ukraine
    const v3, 0x10404f1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "381"

	#akki: Serbia
    const v3, 0x10404d0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "386"

	#akki: Slovenia
    const v3, 0x10404d5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2217
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "39"

	#akki: Italy / Holy See(Vatican City)
    const v3, 0x104047e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2218
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "40"

	#akki: Romania
    const v3, 0x10404c2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2219
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "41"

	#akki: Switzerland
    const v3, 0x10404e0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2220
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "420"

	#akki: Czech Republic
    const v3, 0x1040452

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "421"

	#akki: Slovakia
    const v3, 0x10404d4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "423"

	#akki: Liechtenstein
    const v3, 0x104048e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2223
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "43"

	#akki: Austria
    const v3, 0x104042d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2224
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "44"

	#akki: United Kingdom / Isle of Man
    const v3, 0x10404f3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2225
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "45"

	#akki: Denmark
    const v3, 0x1040454

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2226
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "46"

	#akki: Sweden
    const v3, 0x10404df

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2227
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "47"

	#akki: Norway
    const v3, 0x10404b3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2228
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "48"

	#akki: Poland
    const v3, 0x10404bd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2229
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "49"

	#akki: Germany
    const v3, 0x1040468

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "501"

	#akki: Belize
    const v3, 0x1040435

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2231
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "502"

	#akki: Guatemala
    const v3, 0x104046f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2232
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "503"

	#akki: El Salvador
    const v3, 0x104045a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2233
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "504"

	#akki: Honduras
    const v3, 0x1040474

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2234
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "505"

	#akki: Nicaragua
    const v3, 0x10404ad

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "506"

	#akki: Costa Rica
    const v3, 0x104044e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "507"

	#akki: Panama
    const v3, 0x10404b7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2237
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "509"

	#akki: Haiti
    const v3, 0x1040473

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "51"

	#akki: Peru
    const v3, 0x10404ba

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2239
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "52"

	#akki: Mexico
    const v3, 0x104049d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2240
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "53"

	#akki: Cuba
    const v3, 0x1040450

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2241
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "54"

	#akki: Argentina
    const v3, 0x1040429

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "55"

	#akki: Brazil
    const v3, 0x104043c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2243
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "56"

	#akki: Chile
    const v3, 0x1040449

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "57"

	#akki: Colombia
    const v3, 0x104044b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2245
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "58"

	#akki: Venezuela
    const v3, 0x10404f8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2246
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "591"

	#akki: Bolivia
    const v3, 0x1040439

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "592"

	#akki: Guyana
    const v3, 0x1040472

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2248
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "593"

	#akki: Ecuador
    const v3, 0x1040458

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "594"

	#akki: French Guiana
    const v3, 0x10404ff

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2250
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "595"

	#akki: Paraguay
    const v3, 0x10404b9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2251
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "596"

	#akki: Martinique
    const v3, 0x1040500

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "597"

	#akki: Suriname
    const v3, 0x10404dd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2253
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "598"

	#akki: Uruguay
    const v3, 0x10404f4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2254
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "599"

	#akki: Netherlands Antilles
    const v3, 0x10404aa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2255
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "60"

	#akki: Malaysia
    const v3, 0x1040495

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2256
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "61"

	#akki: Australia / Christmas Island / Cocos Islands
    const v3, 0x104042c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2257
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "62"

	#akki: Indonesia
    const v3, 0x1040479

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "63"

	#akki: Philippines
    const v3, 0x10404bb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2259
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "64"

	#akki: New Zealand
    const v3, 0x10404ac

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "65"

	#akki: Singapore
    const v3, 0x10404d3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2261
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "66"

	#akki: Thailand
    const v3, 0x10404e5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2262
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "673"

	#akki: Brunei
    const v3, 0x104043e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2263
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "674"

	#akki: Nauru
    const v3, 0x10404a7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2264
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "675"

	#akki: Papua New Guinea
    const v3, 0x10404b8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2265
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "676"

	#akki: Tonga
    const v3, 0x10404e9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "677"

	#akki: Solomon Islands
    const v3, 0x10404d6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2267
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "679"

	#akki: Fiji
    const v3, 0x1040461

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "682"

	#akki: Cook Islands
    const v3, 0x104044d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2269
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "684"

	#akki: null
    const v3, 0x104041a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2270
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "685"

	#akki: Samoa
    const v3, 0x1040423

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2271
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "689"

	#akki: French Polynesia
    const v3, 0x1040464

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2272
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "7"

	#akki: Russia / Kazakhstan
    const v3, 0x1040483

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "81"

	#akki: Japan
    const v3, 0x1040481

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2274
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "82"

	#akki: South Korea
    const v3, 0x10404d9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2275
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "84"

	#akki: Vietnam
    const v3, 0x10404f9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2276
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "850"

	#akki: North Korea
    const v3, 0x10404b1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2277
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "852"

	#akki: Hong Kong
    const v3, 0x1040475

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2278
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "853"

	#akki: Macau
    const v3, 0x1040491

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2279
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "855"

	#akki: Cambodia
    const v3, 0x1040443

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2280
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "856"

	#akki: Laos
    const v3, 0x1040488

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2281
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "86"

	#akki: China
    const v3, 0x104044a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2282
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "880"

	#akki: Bangladesh
    const v3, 0x1040431

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2283
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "886"

	#akki: Taiwan
    const v3, 0x10404e2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2284
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "90"

	#akki: Turkey
    const v3, 0x10404ec

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2285
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "91"

	#akki: India
    const v3, 0x1040478

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2286
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "92"

	#akki: Pakistan
    const v3, 0x10404b5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2287
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "93"

	#akki: Afghanistan
    const v3, 0x1040420

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "94"

	#akki: Sri Lanka
    const v3, 0x10404db

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2289
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "95"

	#akki: Burma (Myanmar)
    const v3, 0x1040441

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "960"

	#akki: Maldives
    const v3, 0x1040496

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2291
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "961"

	#akki: Lebanon
    const v3, 0x104048a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "962"

	#akki: Jordan
    const v3, 0x1040482

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2293
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "963"

	#akki: Syria
    const v3, 0x10404e1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2294
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "964"

	#akki: Iraq
    const v3, 0x104047b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "965"

	#akki: Kuwait
    const v3, 0x1040486

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "966"

	#akki: Saudi Arabia
    const v3, 0x10404ce

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2297
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "967"

	#akki: Yemen
    const v3, 0x10404fb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "968"

	#akki: Oman
    const v3, 0x10404b4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2299
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "971"

	#akki: United Arab Emirates
    const v3, 0x10404f2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "972"

	#akki: Israel
    const v3, 0x104047d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2301
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "973"

	#akki: Bahrain
    const v3, 0x1040430

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "974"

	#akki: Qatar
    const v3, 0x10404c0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "976"

	#akki: Mongolia
    const v3, 0x10404a1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2304
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "977"

	#akki: Nepal
    const v3, 0x10404a8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2305
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "98"

	#akki: Iran
    const v3, 0x104047a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2306
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "992"

	#akki: Tajikistan
    const v3, 0x10404e3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2307
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "993"

	#akki: Turkmenistan
    const v3, 0x10404ed

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "994"

	#akki: Azerbaijan
    const v3, 0x104042e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2309
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "995"

	#akki: Georgia
    const v3, 0x1040467

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2357
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mOriginalPhoneNumber:Ljava/lang/String;

    .line 2358
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mOriginalPhoneNumber:Ljava/lang/String;

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, "00"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 2359
    const-string v1, ""

    iput-object v4, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    .line 2360
    const-string v1, ""

    iput-object v4, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 2361
    const-string v1, ""

    iput-object v4, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    .line 2362
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/PhoneNumberUtils$PhoneNumber;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2111
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telephony/PhoneNumberUtils$PhoneNumber;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2111
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telephony/PhoneNumberUtils$PhoneNumber;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2111
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "countryCode"

    .prologue
    .line 2338
    if-eqz p0, :cond_0

    .line 2339
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2340
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2345
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private static isChineseOperator()Z
    .locals 2

    .prologue
    .line 2349
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 2350
    .local v0, simOperator:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2351
    const-string v1, "460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 2353
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    .locals 3
    .parameter "phoneNumber"

    .prologue
    const/4 v2, 0x0

    .line 2370
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 2376
    :goto_0
    return-object v1

    .line 2372
    :cond_0
    new-instance v0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;

    invoke-direct {v0, p0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;-><init>(Ljava/lang/String;)V

    .line 2373
    .local v0, pn:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    iget-object v1, v0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {v0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parsePrefix()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {v0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parseCountryCode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {v0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parseAreaCode()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 2374
    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 2376
    goto :goto_0
.end method

.method private parseAreaCode()Z
    .locals 2

    .prologue
    .line 2562
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->isChineseOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2563
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parseChineseNumber()Z

    move-result v0

    .line 2569
    :goto_0
    return v0

    .line 2565
    :cond_0
    const-string v0, "86"

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 2567
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parseChineseNumber()Z

    move-result v0

    goto :goto_0

    .line 2569
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseChineseNumber()Z
    .locals 6

    .prologue
    const/16 v5, 0x30

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2573
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 2603
    :goto_0
    return v0

    .line 2576
    :cond_0
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_2

    .line 2577
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_1

    move v0, v1

    .line 2578
    goto :goto_0

    .line 2580
    :cond_1
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 2581
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2595
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_3

    move v0, v1

    .line 2596
    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 2583
    goto :goto_0

    .line 2585
    :pswitch_1
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_2

    .line 2586
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 2587
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    :cond_2
    :goto_1
    move v0, v2

    .line 2603
    goto :goto_0

    .line 2591
    :pswitch_2
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 2592
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    goto :goto_1

    .line 2598
    :cond_3
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 2599
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    goto :goto_1

    .line 2581
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseCountryCode()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2399
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    .line 2558
    :goto_0
    return v2

    .line 2402
    :cond_0
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 2403
    const/4 v0, 0x0

    .line 2404
    .local v0, countryCodeLength:I
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    .line 2405
    goto :goto_0

    .line 2407
    :cond_1
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v2, v4

    .line 2554
    goto :goto_0

    .line 2409
    :pswitch_0
    sget-object v2, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->COUNTRY_PATTERN_STARTS_WITH_1:Ljava/util/regex/Pattern;

    iget-object v3, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2410
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2411
    const/4 v0, 0x1

    .line 2556
    .end local v1           #m:Ljava/util/regex/Matcher;
    :cond_2
    :goto_1
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    .line 2557
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    move v2, v5

    .line 2558
    goto :goto_0

    .line 2413
    .restart local v1       #m:Ljava/util/regex/Matcher;
    :cond_3
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 2415
    goto :goto_1

    .line 2417
    .end local v1           #m:Ljava/util/regex/Matcher;
    :pswitch_1
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_4

    move v2, v4

    .line 2418
    goto :goto_0

    .line 2420
    :cond_4
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2426
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_5

    move v2, v4

    .line 2427
    goto :goto_0

    .line 2423
    :sswitch_0
    const/4 v0, 0x2

    .line 2424
    goto :goto_1

    .line 2429
    :cond_5
    const/4 v0, 0x3

    .line 2430
    goto :goto_1

    .line 2434
    :pswitch_2
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_6

    move v2, v4

    .line 2435
    goto :goto_0

    .line 2437
    :cond_6
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 2458
    :pswitch_3
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_7

    move v2, v4

    .line 2459
    goto/16 :goto_0

    .line 2443
    :pswitch_4
    const/4 v0, 0x2

    .line 2444
    goto :goto_1

    .line 2446
    :pswitch_5
    const/4 v0, 0x2

    .line 2447
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_2

    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x37

    if-ne v2, v3, :cond_2

    .line 2448
    const/4 v0, 0x3

    goto :goto_1

    .line 2452
    :pswitch_6
    const/4 v0, 0x2

    .line 2453
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_2

    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2

    .line 2454
    const/4 v0, 0x3

    goto/16 :goto_1

    .line 2461
    :cond_7
    const/4 v0, 0x3

    .line 2462
    goto/16 :goto_1

    .line 2466
    :pswitch_7
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_8

    move v2, v4

    .line 2467
    goto/16 :goto_0

    .line 2469
    :cond_8
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 2477
    const/4 v0, 0x2

    .line 2478
    goto/16 :goto_1

    .line 2471
    :pswitch_8
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_9

    move v2, v4

    .line 2472
    goto/16 :goto_0

    .line 2474
    :cond_9
    const/4 v0, 0x3

    .line 2475
    goto/16 :goto_1

    .line 2482
    :pswitch_9
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_a

    move v2, v4

    .line 2483
    goto/16 :goto_0

    .line 2485
    :cond_a
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 2494
    const/4 v0, 0x2

    .line 2495
    goto/16 :goto_1

    .line 2488
    :sswitch_1
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_b

    move v2, v4

    .line 2489
    goto/16 :goto_0

    .line 2491
    :cond_b
    const/4 v0, 0x3

    .line 2492
    goto/16 :goto_1

    .line 2499
    :pswitch_a
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_c

    move v2, v4

    .line 2500
    goto/16 :goto_0

    .line 2502
    :cond_c
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_3

    .line 2511
    const/4 v0, 0x2

    .line 2512
    goto/16 :goto_1

    .line 2505
    :pswitch_b
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_d

    move v2, v4

    .line 2506
    goto/16 :goto_0

    .line 2508
    :cond_d
    const/4 v0, 0x3

    .line 2509
    goto/16 :goto_1

    .line 2516
    :pswitch_c
    const/4 v0, 0x1

    .line 2517
    goto/16 :goto_1

    .line 2519
    :pswitch_d
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_e

    move v2, v4

    .line 2520
    goto/16 :goto_0

    .line 2522
    :cond_e
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_4

    .line 2531
    :pswitch_e
    const/4 v0, 0x2

    .line 2532
    goto/16 :goto_1

    .line 2525
    :pswitch_f
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_f

    move v2, v4

    .line 2526
    goto/16 :goto_0

    .line 2528
    :cond_f
    const/4 v0, 0x3

    .line 2529
    goto/16 :goto_1

    .line 2536
    :pswitch_10
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_10

    move v2, v4

    .line 2537
    goto/16 :goto_0

    .line 2539
    :cond_10
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_5

    .line 2549
    :pswitch_11
    const/4 v0, 0x2

    .line 2550
    goto/16 :goto_1

    .line 2543
    :pswitch_12
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_11

    move v2, v4

    .line 2544
    goto/16 :goto_0

    .line 2546
    :cond_11
    const/4 v0, 0x3

    .line 2547
    goto/16 :goto_1

    .line 2407
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_10
    .end packed-switch

    .line 2420
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x37 -> :sswitch_0
    .end sparse-switch

    .line 2437
    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2469
    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_8
    .end packed-switch

    .line 2485
    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_1
        0x39 -> :sswitch_1
    .end sparse-switch

    .line 2502
    :pswitch_data_3
    .packed-switch 0x37
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 2522
    :pswitch_data_4
    .packed-switch 0x35
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 2539
    :pswitch_data_5
    .packed-switch 0x36
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private parsePrefix()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2383
    invoke-static {}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->isChineseOperator()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 2392
    :goto_0
    return v1

    .line 2387
    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->PREFIX_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2388
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2389
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    .line 2390
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    :cond_1
    move v1, v3

    .line 2392
    goto :goto_0
.end method


# virtual methods
.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2317
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2313
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectiveNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2334
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2325
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mOriginalPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2321
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isChineseNumber()Z
    .locals 2

    .prologue
    .line 2607
    const-string v0, "86"

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->isChineseOperator()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNormalMobileNumber()Z
    .locals 7

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2612
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2613
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2614
    .local v0, c:C
    const/16 v1, 0x31

    if-ne v0, v1, :cond_3

    .line 2615
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2616
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v3

    .line 2633
    .end local v0           #c:C
    :goto_0
    return v1

    .line 2619
    .restart local v0       #c:C
    :pswitch_1
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .line 2622
    :pswitch_2
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-eq v1, v2, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :pswitch_3
    move v1, v4

    .line 2626
    goto :goto_0

    .end local v0           #c:C
    :cond_3
    move v1, v3

    .line 2633
    goto :goto_0

    .line 2616
    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isServiceNumber()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/16 v5, 0x30

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2637
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_5

    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2638
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2639
    .local v0, c:C
    const/16 v1, 0x31

    if-ne v0, v1, :cond_2

    .line 2640
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2641
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v4

    .line 2668
    .end local v0           #c:C
    :goto_0
    return v1

    .restart local v0       #c:C
    :pswitch_1
    move v1, v3

    .line 2647
    goto :goto_0

    .line 2650
    :pswitch_2
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_0

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_0

    .line 2656
    :pswitch_3
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_0

    .line 2660
    :cond_2
    const/16 v1, 0x39

    if-ne v0, v1, :cond_3

    move v1, v3

    .line 2662
    goto :goto_0

    .line 2663
    :cond_3
    const/16 v1, 0x32

    if-lt v0, v1, :cond_5

    const/16 v1, 0x38

    if-gt v0, v1, :cond_5

    .line 2665
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_0

    .end local v0           #c:C
    :cond_5
    move v1, v4

    .line 2668
    goto :goto_0

    .line 2641
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
