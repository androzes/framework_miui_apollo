.class public Landroid/pim/vcard/VCardParser_V30;
.super Landroid/pim/vcard/VCardParser_V21;
.source "VCardParser_V30.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VCardParser_V30"

.field private static final acceptablePropsWithoutParam:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAcceptableEncodingV30:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAcceptablePropsWithParam:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEmittedAgentWarning:Z

.field private mPreviousLine:Ljava/lang/String;

.field private final mStrictParsing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1c

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "BEGIN"

    aput-object v2, v1, v4

    const-string v2, "LOGO"

    aput-object v2, v1, v5

    const-string v2, "PHOTO"

    aput-object v2, v1, v6

    const-string v2, "LABEL"

    aput-object v2, v1, v7

    const-string v2, "FN"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "TITLE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "SOUND"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "VERSION"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "TEL"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "EMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "TZ"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "GEO"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "NOTE"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "BDAY"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "ROLE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "REV"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "KEY"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "MAILER"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "NAME"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "PROFILE"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "SOURCE"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "NICKNAME"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "CLASS"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "SORT-STRING"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "CATEGORIES"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "PRODID"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/pim/vcard/VCardParser_V30;->sAcceptablePropsWithParam:Ljava/util/HashSet;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "7BIT"

    aput-object v2, v1, v4

    const-string v2, "8BIT"

    aput-object v2, v1, v5

    const-string v2, "BASE64"

    aput-object v2, v1, v6

    const-string v2, "B"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/pim/vcard/VCardParser_V30;->sAcceptableEncodingV30:Ljava/util/HashSet;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardParser_V30;->acceptablePropsWithoutParam:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/pim/vcard/VCardParser_V21;-><init>()V

    .line 50
    iput-boolean v0, p0, Landroid/pim/vcard/VCardParser_V30;->mEmittedAgentWarning:Z

    .line 60
    iput-boolean v0, p0, Landroid/pim/vcard/VCardParser_V30;->mStrictParsing:Z

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "parseMode"

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/pim/vcard/VCardParser_V21;-><init>(I)V

    .line 50
    iput-boolean v0, p0, Landroid/pim/vcard/VCardParser_V30;->mEmittedAgentWarning:Z

    .line 77
    iput-boolean v0, p0, Landroid/pim/vcard/VCardParser_V30;->mStrictParsing:Z

    .line 78
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "strictParsing"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/pim/vcard/VCardParser_V21;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/pim/vcard/VCardParser_V30;->mEmittedAgentWarning:Z

    .line 72
    iput-boolean p1, p0, Landroid/pim/vcard/VCardParser_V30;->mStrictParsing:Z

    .line 73
    return-void
.end method

.method public static unescapeCharacter(C)Ljava/lang/String;
    .locals 1
    .parameter "ch"

    .prologue
    .line 352
    const/16 v0, 0x6e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1

    .line 353
    :cond_0
    const-string v0, "\n"

    .line 355
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 330
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 331
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 332
    .local v1, ch:C
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_2

    const/4 v5, 0x1

    sub-int v5, v3, v5

    if-ge v2, v5, :cond_2

    .line 333
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 334
    .local v4, next_ch:C
    const/16 v5, 0x6e

    if-eq v4, v5, :cond_0

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_1

    .line 335
    :cond_0
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .end local v4           #next_ch:C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    .restart local v4       #next_ch:C
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 340
    .end local v4           #next_ch:C
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 343
    .end local v1           #ch:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :goto_0
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParser_V30;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 300
    new-instance v2, Landroid/pim/vcard/exception/VCardException;

    const-string v3, "File ended during parsing BASE64 binary"

    invoke-direct {v2, v3}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 312
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 305
    :cond_1
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 306
    iput-object v1, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    goto :goto_1

    .line 309
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 110
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    .line 111
    .local v0, ret:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    move-object v1, v0

    .line 114
    .end local v0           #ret:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/pim/vcard/VCardParser_V30;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, builder:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/pim/vcard/VCardParser_V30;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 129
    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    :goto_1
    return-object v3

    .line 131
    :cond_1
    iget-object v3, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 132
    iget-object v2, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    .line 133
    .local v2, ret:Ljava/lang/String;
    iput-object v5, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    move-object v3, v2

    .line 134
    goto :goto_1

    .line 136
    .end local v2           #ret:Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    const-string v4, "Reached end of buffer."

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 138
    if-eqz v0, :cond_4

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 140
    :cond_4
    iget-object v3, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 141
    iget-object v2, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    .line 142
    .restart local v2       #ret:Ljava/lang/String;
    iput-object v5, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    move-object v3, v2

    .line 143
    goto :goto_1

    .line 145
    .end local v2           #ret:Ljava/lang/String;
    :cond_5
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_9

    .line 146
    :cond_6
    if-eqz v0, :cond_7

    .line 162
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 163
    :cond_7
    iget-object v3, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iput-object v5, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    .line 167
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 169
    :cond_8
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    const-string v4, "Space exists at the beginning of the line"

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    :cond_9
    iget-object v3, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 173
    iput-object v1, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    .line 174
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 178
    :cond_a
    iget-object v2, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    .line 179
    .restart local v2       #ret:Ljava/lang/String;
    iput-object v1, p0, Landroid/pim/vcard/VCardParser_V30;->mPreviousLine:Ljava/lang/String;

    move-object v3, v2

    .line 180
    goto :goto_1
.end method

.method protected getVersion()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "3.0"

    return-object v0
.end method

.method protected handleAgent(Ljava/lang/String;)V
    .locals 2
    .parameter "propertyValue"

    .prologue
    .line 282
    iget-boolean v0, p0, Landroid/pim/vcard/VCardParser_V30;->mEmittedAgentWarning:Z

    if-nez v0, :cond_0

    .line 283
    const-string v0, "VCardParser_V30"

    const-string v1, "AGENT in vCard 3.0 is not supported yet. Ignore it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/pim/vcard/VCardParser_V30;->mEmittedAgentWarning:Z

    .line 286
    :cond_0
    return-void
.end method

.method protected handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "paramName"
    .parameter "paramValue"

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Landroid/pim/vcard/VCardParser_V21;->handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method protected handleParamWithoutName(Ljava/lang/String;)V
    .locals 2
    .parameter "paramValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 233
    iget-boolean v0, p0, Landroid/pim/vcard/VCardParser_V30;->mStrictParsing:Z

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Landroid/pim/vcard/exception/VCardException;

    const-string v1, "Parameter without name is not acceptable in vCard 3.0"

    invoke-direct {v0, v1}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    invoke-super {p0, p1}, Landroid/pim/vcard/VCardParser_V21;->handleParamWithoutName(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method protected handleParams(Ljava/lang/String;)V
    .locals 5
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 212
    :try_start_0
    invoke-super {p0, p1}, Landroid/pim/vcard/VCardParser_V21;->handleParams(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Landroid/pim/vcard/exception/VCardException;
    const-string v2, "="

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, strArray:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v3, :cond_0

    .line 217
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {p0, v2, v3}, Landroid/pim/vcard/VCardParser_V30;->handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_0
    new-instance v2, Landroid/pim/vcard/exception/VCardException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown params value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected handleType(Ljava/lang/String;)V
    .locals 10
    .parameter "ptypevalues"

    .prologue
    const/4 v8, 0x1

    const-string v9, "\""

    .line 250
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, ptypeArray:[Ljava/lang/String;
    iget-object v6, p0, Landroid/pim/vcard/VCardParser_V30;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    const-string v7, "TYPE"

    invoke-interface {v6, v7}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 252
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 253
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 254
    .local v3, length:I
    const/4 v6, 0x2

    if-lt v3, v6, :cond_0

    const-string v6, "\""

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "\""

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 255
    iget-object v6, p0, Landroid/pim/vcard/VCardParser_V30;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 252
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    iget-object v6, p0, Landroid/pim/vcard/VCardParser_V30;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v6, v5}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    goto :goto_1

    .line 260
    .end local v3           #length:I
    .end local v5           #value:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected isValidEncoding(Ljava/lang/String;)Z
    .locals 2
    .parameter "encoding"

    .prologue
    .line 104
    sget-object v0, Landroid/pim/vcard/VCardParser_V30;->sAcceptableEncodingV30:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isValidPropertyName(Ljava/lang/String;)Z
    .locals 3
    .parameter "propertyName"

    .prologue
    .line 92
    sget-object v0, Landroid/pim/vcard/VCardParser_V30;->sAcceptablePropsWithParam:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/pim/vcard/VCardParser_V30;->acceptablePropsWithoutParam:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V30;->mUnknownTypeMap:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V30;->mUnknownTypeMap:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v0, "VCardParser_V30"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property name unsupported by vCard 3.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeUnescapeCharacter(C)Ljava/lang/String;
    .locals 1
    .parameter "ch"

    .prologue
    .line 348
    invoke-static {p1}, Landroid/pim/vcard/VCardParser_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"

    .prologue
    .line 324
    invoke-static {p1}, Landroid/pim/vcard/VCardParser_V30;->unescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readBeginVCard(Z)Z
    .locals 1
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/pim/vcard/VCardParser_V21;->readBeginVCard(Z)Z

    move-result v0

    return v0
.end method

.method protected readEndVCard(ZZ)V
    .locals 0
    .parameter "useCache"
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-super {p0, p1, p2}, Landroid/pim/vcard/VCardParser_V21;->readEndVCard(ZZ)V

    .line 204
    return-void
.end method
