.class public Landroid/pim/vcard/VCardEntryConstructor;
.super Ljava/lang/Object;
.source "VCardEntryConstructor.java"

# interfaces
.implements Landroid/pim/vcard/VCardInterpreter;


# static fields
.field static final DEFAULT_CHARSET_FOR_DECODED_BYTES:Ljava/lang/String; = "UTF-8"

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mCharsetForDecodedBytes:Ljava/lang/String;

.field private mCurrentContactStruct:Landroid/pim/vcard/VCardEntry;

.field private mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

.field private final mEntryHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mInputCharset:Ljava/lang/String;

.field private mParamType:Ljava/lang/String;

.field private final mStrictLineBreakParsing:Z

.field private mTimePushIntoContentResolver:J

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "VCardEntryConstructor"

    sput-object v0, Landroid/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v3, 0x0

    const/high16 v4, -0x4000

    move-object v0, p0

    move-object v2, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/pim/vcard/VCardEntryConstructor;-><init>(Ljava/lang/String;Ljava/lang/String;ZILandroid/accounts/Account;)V

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .parameter "vcardType"

    .prologue
    const/4 v1, 0x0

    .line 69
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move v4, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/pim/vcard/VCardEntryConstructor;-><init>(Ljava/lang/String;Ljava/lang/String;ZILandroid/accounts/Account;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILandroid/accounts/Account;)V
    .locals 1
    .parameter "inputCharset"
    .parameter "charsetForDetodedBytes"
    .parameter "strictLineBreakParsing"
    .parameter "vcardType"
    .parameter "account"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/pim/vcard/VCardEntry$Property;

    invoke-direct {v0}, Landroid/pim/vcard/VCardEntry$Property;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    .line 80
    if-eqz p1, :cond_0

    .line 81
    iput-object p1, p0, Landroid/pim/vcard/VCardEntryConstructor;->mInputCharset:Ljava/lang/String;

    .line 85
    :goto_0
    if-eqz p2, :cond_1

    .line 86
    iput-object p2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCharsetForDecodedBytes:Ljava/lang/String;

    .line 90
    :goto_1
    iput-boolean p3, p0, Landroid/pim/vcard/VCardEntryConstructor;->mStrictLineBreakParsing:Z

    .line 91
    iput p4, p0, Landroid/pim/vcard/VCardEntryConstructor;->mVCardType:I

    .line 92
    iput-object p5, p0, Landroid/pim/vcard/VCardEntryConstructor;->mAccount:Landroid/accounts/Account;

    .line 93
    return-void

    .line 83
    :cond_0
    const-string v0, "iso-8859-1"

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mInputCharset:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_1
    const-string v0, "UTF-8"

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCharsetForDecodedBytes:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;ZILandroid/accounts/Account;)V
    .locals 6
    .parameter "charset"
    .parameter "strictLineBreakParsing"
    .parameter "vcardType"
    .parameter "account"

    .prologue
    .line 74
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/pim/vcard/VCardEntryConstructor;-><init>(Ljava/lang/String;Ljava/lang/String;ZILandroid/accounts/Account;)V

    .line 75
    return-void
.end method

.method private encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "originalString"
    .parameter "charsetForDecodedBytes"

    .prologue
    .line 170
    iget-object v4, p0, Landroid/pim/vcard/VCardEntryConstructor;->mInputCharset:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 183
    :goto_0
    return-object v4

    .line 173
    :cond_0
    iget-object v4, p0, Landroid/pim/vcard/VCardEntryConstructor;->mInputCharset:Ljava/lang/String;

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 174
    .local v2, charset:Ljava/nio/charset/Charset;
    invoke-virtual {v2, p1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 177
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v1, v4, [B

    .line 178
    .local v1, bytes:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 180
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 182
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    sget-object v4, Landroid/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to encode: charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private handleOneValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .parameter "value"
    .parameter "charsetForDecodedBytes"
    .parameter "encoding"

    .prologue
    .line 188
    if-eqz p3, :cond_d

    .line 189
    const-string v19, "BASE64"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "B"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 190
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/pim/vcard/VCardEntry$Property;->setPropertyBytes([B)V

    move-object/from16 v19, p1

    .line 275
    :goto_0
    return-object v19

    .line 192
    :cond_1
    const-string v19, "QUOTED-PRINTABLE"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v4, builder:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    .line 197
    .local v13, length:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v13, :cond_4

    .line 198
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 199
    .local v6, ch:C
    const/16 v19, 0x3d

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v19, 0x1

    sub-int v19, v13, v19

    move v0, v10

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 200
    add-int/lit8 v19, v10, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 201
    .local v17, nextCh:C
    const/16 v19, 0x20

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    const/16 v19, 0x9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 203
    :cond_2
    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    add-int/lit8 v10, v10, 0x1

    .line 197
    .end local v17           #nextCh:C
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 208
    :cond_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 210
    .end local v6           #ch:C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 213
    .local v18, quotedPrintable:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntryConstructor;->mStrictLineBreakParsing:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 214
    const-string v19, "\r\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 244
    .local v15, lines:[Ljava/lang/String;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    move-object v3, v15

    .local v3, arr$:[Ljava/lang/String;
    array-length v12, v3

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_4
    if-ge v11, v12, :cond_c

    aget-object v14, v3, v11

    .line 246
    .local v14, line:Ljava/lang/String;
    const-string v19, "="

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 247
    const/16 v19, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move-object v0, v14

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 249
    :cond_5
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 216
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v14           #line:Ljava/lang/String;
    .end local v15           #lines:[Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v13

    .line 218
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v16, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v13, :cond_a

    .line 220
    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 221
    .restart local v6       #ch:C
    const/16 v19, 0xa

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 222
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    :cond_7
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 224
    :cond_8
    const/16 v19, 0xd

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 225
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    const/16 v19, 0x1

    sub-int v19, v13, v19

    move v0, v10

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 228
    add-int/lit8 v19, v10, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 229
    .restart local v17       #nextCh:C
    const/16 v19, 0xa

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 230
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 234
    .end local v17           #nextCh:C
    :cond_9
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 237
    .end local v6           #ch:C
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 238
    .local v9, finalLine:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_b

    .line 239
    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_b
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    .restart local v15       #lines:[Ljava/lang/String;
    goto/16 :goto_3

    .line 253
    .end local v9           #finalLine:Ljava/lang/String;
    .end local v16           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v12       #len$:I
    :cond_c
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntryConstructor;->mInputCharset:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 260
    .local v5, bytes:[B
    :goto_7
    :try_start_1
    invoke-static {v5}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B
    :try_end_1
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 267
    :try_start_2
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 268
    :catch_0
    move-exception v19

    move-object/from16 v7, v19

    .line 269
    .local v7, e:Ljava/io/UnsupportedEncodingException;
    sget-object v19, Landroid/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to encode: charset="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    .line 254
    .end local v5           #bytes:[B
    .end local v7           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v19

    move-object/from16 v8, v19

    .line 255
    .local v8, e1:Ljava/io/UnsupportedEncodingException;
    sget-object v19, Landroid/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to encode: charset="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntryConstructor;->mInputCharset:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .restart local v5       #bytes:[B
    goto :goto_7

    .line 261
    .end local v8           #e1:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v7

    .line 262
    .local v7, e:Lorg/apache/commons/codec/DecoderException;
    sget-object v19, Landroid/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to decode quoted-printable: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v19, ""

    goto/16 :goto_0

    .line 275
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v5           #bytes:[B
    .end local v7           #e:Lorg/apache/commons/codec/DecoderException;
    .end local v10           #i:I
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #length:I
    .end local v15           #lines:[Ljava/lang/String;
    .end local v18           #quotedPrintable:Ljava/lang/String;
    :cond_d
    invoke-direct/range {p0 .. p2}, Landroid/pim/vcard/VCardEntryConstructor;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0
.end method


# virtual methods
.method public addEntryHandler(Landroid/pim/vcard/VCardEntryHandler;)V
    .locals 1
    .parameter "entryHandler"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentContactStruct:Landroid/pim/vcard/VCardEntry;

    .line 116
    new-instance v0, Landroid/pim/vcard/VCardEntry$Property;

    invoke-direct {v0}, Landroid/pim/vcard/VCardEntry$Property;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    .line 117
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    .line 106
    iget-object v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntryHandler;

    .line 107
    .local v0, entryHandler:Landroid/pim/vcard/VCardEntryHandler;
    invoke-interface {v0}, Landroid/pim/vcard/VCardEntryHandler;->onEnd()V

    goto :goto_0

    .line 109
    .end local v0           #entryHandler:Landroid/pim/vcard/VCardEntryHandler;
    :cond_0
    return-void
.end method

.method public endEntry()V
    .locals 3

    .prologue
    .line 130
    iget-object v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentContactStruct:Landroid/pim/vcard/VCardEntry;

    invoke-virtual {v2}, Landroid/pim/vcard/VCardEntry;->consolidateFields()V

    .line 131
    iget-object v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntryHandler;

    .line 132
    .local v0, entryHandler:Landroid/pim/vcard/VCardEntryHandler;
    iget-object v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentContactStruct:Landroid/pim/vcard/VCardEntry;

    invoke-interface {v0, v2}, Landroid/pim/vcard/VCardEntryHandler;->onEntryCreated(Landroid/pim/vcard/VCardEntry;)V

    goto :goto_0

    .line 134
    .end local v0           #entryHandler:Landroid/pim/vcard/VCardEntryHandler;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentContactStruct:Landroid/pim/vcard/VCardEntry;

    .line 135
    return-void
.end method

.method public endProperty()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentContactStruct:Landroid/pim/vcard/VCardEntry;

    iget-object v1, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardEntry;->addProperty(Landroid/pim/vcard/VCardEntry$Property;)V

    .line 143
    return-void
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 150
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 146
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    invoke-virtual {v0, p1}, Landroid/pim/vcard/VCardEntry$Property;->setPropertyName(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 153
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Landroid/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "propertyParamType() is called more than once before propertyParamValue() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    iput-object p1, p0, Landroid/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 161
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 163
    const-string v0, "TYPE"

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    .line 165
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    iget-object v1, p0, Landroid/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/pim/vcard/VCardEntry$Property;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mParamType:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public propertyValues(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 279
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 299
    :cond_0
    return-void

    .line 283
    :cond_1
    iget-object v7, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    const-string v8, "CHARSET"

    invoke-virtual {v7, v8}, Landroid/pim/vcard/VCardEntry$Property;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 284
    .local v1, charsetCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v0, v7

    .line 286
    .local v0, charset:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    const-string v8, "ENCODING"

    invoke-virtual {v7, v8}, Landroid/pim/vcard/VCardEntry$Property;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    .line 287
    .local v4, encodingCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v3, v7

    .line 290
    .local v3, encoding:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/util/CharsetUtils;->nameForDefaultVendor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, charsetForDecodedBytes:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 292
    :cond_2
    iget-object v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCharsetForDecodedBytes:Ljava/lang/String;

    .line 295
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 296
    .local v6, value:Ljava/lang/String;
    iget-object v7, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    invoke-direct {p0, v6, v2, v3}, Landroid/pim/vcard/VCardEntryConstructor;->handleOneValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/pim/vcard/VCardEntry$Property;->addToPropertyValueList(Ljava/lang/String;)V

    goto :goto_2

    .end local v0           #charset:Ljava/lang/String;
    .end local v2           #charsetForDecodedBytes:Ljava/lang/String;
    .end local v3           #encoding:Ljava/lang/String;
    .end local v4           #encodingCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #value:Ljava/lang/String;
    :cond_4
    move-object v0, v9

    .line 284
    goto :goto_0

    .restart local v0       #charset:Ljava/lang/String;
    .restart local v4       #encodingCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_5
    move-object v3, v9

    .line 287
    goto :goto_1
.end method

.method public showPerformanceInfo()V
    .locals 4

    .prologue
    .line 302
    sget-object v0, Landroid/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "time for insert ContactStruct to database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mTimePushIntoContentResolver:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 100
    iget-object v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntryHandler;

    .line 101
    .local v0, entryHandler:Landroid/pim/vcard/VCardEntryHandler;
    invoke-interface {v0}, Landroid/pim/vcard/VCardEntryHandler;->onStart()V

    goto :goto_0

    .line 103
    .end local v0           #entryHandler:Landroid/pim/vcard/VCardEntryHandler;
    :cond_0
    return-void
.end method

.method public startEntry()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentContactStruct:Landroid/pim/vcard/VCardEntry;

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Landroid/pim/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Nested VCard code is not supported now."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    new-instance v0, Landroid/pim/vcard/VCardEntry;

    iget v1, p0, Landroid/pim/vcard/VCardEntryConstructor;->mVCardType:I

    iget-object v2, p0, Landroid/pim/vcard/VCardEntryConstructor;->mAccount:Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Landroid/pim/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentContactStruct:Landroid/pim/vcard/VCardEntry;

    .line 127
    return-void
.end method

.method public startProperty()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryConstructor;->mCurrentProperty:Landroid/pim/vcard/VCardEntry$Property;

    invoke-virtual {v0}, Landroid/pim/vcard/VCardEntry$Property;->clear()V

    .line 139
    return-void
.end method
