.class public Landroid/pim/vcard/VCardConfig;
.super Ljava/lang/Object;
.source "VCardConfig.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "iso-8859-1"

.field public static final FLAG_APPEND_TYPE_PARAM:I = 0x4000000

.field private static final FLAG_CHARSET_MASK:I = 0xf00

.field private static final FLAG_CHARSET_SHIFT_JIS:I = 0x100

.field private static final FLAG_CHARSET_UTF8:I = 0x0

.field public static final FLAG_CONVERT_PHONETIC_NAME_STRINGS:I = 0x800000

.field private static final FLAG_DOCOMO:I = 0x20000000

.field public static final FLAG_REFRAIN_IMAGE_EXPORT:I = 0x2000000

.field public static final FLAG_REFRAIN_QP_TO_NAME_PROPERTIES:I = 0x10000000

.field private static final FLAG_USE_ANDROID_PROPERTY:I = -0x80000000

.field private static final FLAG_USE_DEFACT_PROPERTY:I = 0x40000000

.field public static final FLAG_V21:I = 0x0

.field public static final FLAG_V30:I = 0x1

.field static final LOG_LEVEL:I = 0x0

.field static final LOG_LEVEL_NONE:I = 0x0

.field static final LOG_LEVEL_PERFORMANCE_MEASUREMENT:I = 0x1

.field static final LOG_LEVEL_SHOW_WARNING:I = 0x2

.field static final LOG_LEVEL_VERBOSE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "VCardConfig"

.field public static final NAME_ORDER_DEFAULT:I = 0x0

.field public static final NAME_ORDER_EUROPE:I = 0x4

.field public static final NAME_ORDER_JAPANESE:I = 0x8

.field private static final NAME_ORDER_MASK:I = 0xc

.field static final PARSE_TYPE_APPLE:I = 0x1

.field static final PARSE_TYPE_FOMA:I = 0x3

.field static final PARSE_TYPE_MOBILE_PHONE_JP:I = 0x2

.field static final PARSE_TYPE_UNKNOWN:I = 0x0

.field static final PARSE_TYPE_WINDOWS_MOBILE_JP:I = 0x4

.field public static VCARD_TYPE_DEFAULT:I = 0x0

.field public static final VCARD_TYPE_DOCOMO:I = 0x30800108

.field static final VCARD_TYPE_DOCOMO_STR:Ljava/lang/String; = "docomo"

.field public static final VCARD_TYPE_V21_EUROPE_UTF8:I = -0x3ffffffc

.field static final VCARD_TYPE_V21_EUROPE_UTF8_STR:Ljava/lang/String; = "v21_europe"

.field public static final VCARD_TYPE_V21_GENERIC_UTF8:I = -0x40000000

.field static VCARD_TYPE_V21_GENERIC_UTF8_STR:Ljava/lang/String; = null

.field public static final VCARD_TYPE_V21_JAPANESE_MOBILE:I = 0x10800108

.field static final VCARD_TYPE_V21_JAPANESE_MOBILE_STR:Ljava/lang/String; = "v21_japanese_mobile"

.field public static final VCARD_TYPE_V21_JAPANESE_SJIS:I = -0x3ffffef8

.field static final VCARD_TYPE_V21_JAPANESE_SJIS_STR:Ljava/lang/String; = "v21_japanese_sjis"

.field public static final VCARD_TYPE_V21_JAPANESE_UTF8:I = -0x3ffffff8

.field static final VCARD_TYPE_V21_JAPANESE_UTF8_STR:Ljava/lang/String; = "v21_japanese_utf8"

.field static final VCARD_TYPE_V30_EUROPE_STR:Ljava/lang/String; = "v30_europe"

.field public static final VCARD_TYPE_V30_EUROPE_UTF8:I = -0x3ffffffb

.field public static final VCARD_TYPE_V30_GENERIC_UTF8:I = -0x3fffffff

.field static final VCARD_TYPE_V30_GENERIC_UTF8_STR:Ljava/lang/String; = "v30_generic"

.field public static final VCARD_TYPE_V30_JAPANESE_SJIS:I = -0x3ffffef7

.field static final VCARD_TYPE_V30_JAPANESE_SJIS_STR:Ljava/lang/String; = "v30_japanese_sjis"

.field public static final VCARD_TYPE_V30_JAPANESE_UTF8:I = -0x3ffffff7

.field static final VCARD_TYPE_V30_JAPANESE_UTF8_STR:Ljava/lang/String; = "v30_japanese_utf8"

.field private static final sJapaneseMobileTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVCardTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, -0x3ffffef7

    const v5, -0x3ffffff7

    const v4, -0x3ffffff8

    const/high16 v2, -0x4000

    const v3, -0x3ffffef8

    .line 210
    const-string/jumbo v0, "v21_generic"

    sput-object v0, Landroid/pim/vcard/VCardConfig;->VCARD_TYPE_V21_GENERIC_UTF8_STR:Ljava/lang/String;

    .line 342
    sput v2, Landroid/pim/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    .line 348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    .line 349
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/pim/vcard/VCardConfig;->VCARD_TYPE_V21_GENERIC_UTF8_STR:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v30_generic"

    const v2, -0x3fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v21_europe"

    const v2, -0x3ffffffc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v30_europe"

    const v2, -0x3ffffffb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v21_japanese_sjis"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v21_japanese_utf8"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v30_japanese_sjis"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v30_japanese_utf8"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v21_japanese_mobile"

    const v2, 0x10800108

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string v1, "docomo"

    const v2, 0x30800108

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    .line 361
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    const v1, 0x10800108

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    const v1, 0x30800108

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    return-void
.end method

.method public static appendTypeParamName(I)Z
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 420
    invoke-static {p0}, Landroid/pim/vcard/VCardConfig;->isV30(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x400

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNameOrderType(I)I
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 399
    and-int/lit8 v0, p0, 0xc

    return v0
.end method

.method public static getVCardTypeFromString(Ljava/lang/String;)I
    .locals 4
    .parameter "vcardTypeString"

    .prologue
    .line 371
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, loweredKey:Ljava/lang/String;
    sget-object v1, Landroid/pim/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    sget-object v1, Landroid/pim/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 378
    :goto_0
    return v1

    .line 374
    .restart local p0
    :cond_0
    const-string v1, "default"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    sget v1, Landroid/pim/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    goto :goto_0

    .line 377
    :cond_1
    const-string v1, "VCardConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown vCard type String: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget v1, Landroid/pim/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    goto :goto_0
.end method

.method public static isDoCoMo(I)Z
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 443
    const/high16 v0, 0x2000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJapaneseDevice(I)Z
    .locals 2
    .parameter "vcardType"

    .prologue
    .line 431
    sget-object v0, Landroid/pim/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isV30(I)Z
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 383
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needsToConvertPhoneticString(I)Z
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 435
    const/high16 v0, 0x80

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onlyOneNoteFieldIsAvailable(I)Z
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 439
    const v0, 0x30800108

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldRefrainQPToNameProperties(I)Z
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 415
    invoke-static {p0}, Landroid/pim/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldUseQuotedPrintable(I)Z
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 387
    invoke-static {p0}, Landroid/pim/vcard/VCardConfig;->isV30(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showPerformanceLog()Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public static usesAndroidSpecificProperty(I)Z
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 403
    const/high16 v0, -0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static usesDefactProperty(I)Z
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 407
    const/high16 v0, 0x4000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static usesShiftJis(I)Z
    .locals 2
    .parameter "vcardType"

    .prologue
    .line 395
    and-int/lit16 v0, p0, 0xf00

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static usesUtf8(I)Z
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 391
    and-int/lit16 v0, p0, 0xf00

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
