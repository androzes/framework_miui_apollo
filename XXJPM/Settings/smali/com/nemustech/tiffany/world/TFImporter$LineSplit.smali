.class public Lcom/nemustech/tiffany/world/TFImporter$LineSplit;
.super Ljava/lang/Object;
.source "TFImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineSplit"
.end annotation


# static fields
.field public static final MAX_LINE_SIZE:I = 0x100

.field public static final MAX_TOKEN_COUNT:I = 0x20


# instance fields
.field protected mCommentStart:I

.field protected mEOF:Z

.field protected mLine:[B

.field protected mLineCount:I

.field protected mPosInLine:I

.field protected mReader:Ljava/io/InputStream;

.field protected mSkipEmptyLine:Z

.field protected mTokenCount:I

.field protected mTokenEnd:[I

.field protected mTokenStart:[I

.field protected mUnread:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .parameter "is"

    .prologue
    const/16 v3, 0x20

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mReader:Ljava/io/InputStream;

    .line 74
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mLine:[B

    .line 75
    iput v1, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mPosInLine:I

    .line 76
    iput v2, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mUnread:I

    .line 77
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mEOF:Z

    .line 78
    iput v1, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mLineCount:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mSkipEmptyLine:Z

    .line 82
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenStart:[I

    .line 83
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenEnd:[I

    .line 84
    iput v2, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mCommentStart:I

    .line 85
    iput v1, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenCount:I

    .line 86
    return-void
.end method

.method protected static parseFloat([BII)F
    .locals 8
    .parameter "line"
    .parameter "pos"
    .parameter "end"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, minus:Z
    const/4 v3, 0x0

    .line 255
    .local v3, ret:F
    aget-byte v4, p0, p1

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_0

    .line 256
    const/4 v2, 0x1

    .line 257
    add-int/lit8 p1, p1, 0x1

    .line 259
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_2

    .line 260
    aget-byte v0, p0, p1

    .line 261
    .local v0, ch:I
    if-lt v0, v6, :cond_1

    if-gt v0, v7, :cond_1

    .line 262
    const/high16 v4, 0x4120

    mul-float/2addr v4, v3

    sub-int v5, v0, v6

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 259
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 263
    :cond_1
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_3

    .line 268
    .end local v0           #ch:I
    :cond_2
    const/16 v1, 0xa

    .line 269
    .local v1, div:I
    add-int/lit8 p1, p1, 0x1

    .line 270
    :goto_1
    if-ge p1, p2, :cond_5

    .line 271
    aget-byte v0, p0, p1

    .line 272
    .restart local v0       #ch:I
    if-lt v0, v6, :cond_4

    if-gt v0, v7, :cond_4

    .line 273
    sub-int v4, v0, v6

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 274
    mul-int/lit8 v1, v1, 0xa

    .line 270
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 266
    .end local v1           #div:I
    :cond_3
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    .line 277
    .restart local v1       #div:I
    :cond_4
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    .line 279
    .end local v0           #ch:I
    :cond_5
    if-eqz v2, :cond_6

    .line 280
    neg-float v4, v3

    .line 281
    :goto_2
    return v4

    :cond_6
    move v4, v3

    goto :goto_2
.end method

.method protected static parseInt([BII)I
    .locals 6
    .parameter "line"
    .parameter "pos"
    .parameter "end"

    .prologue
    const/16 v5, 0x30

    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, minus:Z
    const/4 v2, 0x0

    .line 237
    .local v2, ret:I
    aget-byte v3, p0, p1

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 238
    const/4 v1, 0x1

    .line 239
    add-int/lit8 p1, p1, 0x1

    .line 241
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_2

    .line 242
    aget-byte v0, p0, p1

    .line 243
    .local v0, ch:I
    if-lt v0, v5, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 244
    mul-int/lit8 v3, v2, 0xa

    sub-int v4, v0, v5

    add-int v2, v3, v4

    .line 241
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 246
    :cond_1
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3}, Ljava/lang/NumberFormatException;-><init>()V

    throw v3

    .line 248
    .end local v0           #ch:I
    :cond_2
    if-eqz v1, :cond_3

    .line 249
    neg-int v3, v2

    .line 250
    :goto_1
    return v3

    :cond_3
    move v3, v2

    goto :goto_1
.end method


# virtual methods
.method protected appendToLine(I)V
    .locals 3
    .parameter "ch"

    .prologue
    .line 95
    iget v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mPosInLine:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "line overflow"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mLine:[B

    iget v1, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mPosInLine:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mPosInLine:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 98
    return-void
.end method

.method protected charAt(I)B
    .locals 1
    .parameter "index"

    .prologue
    .line 100
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mPosInLine:I

    if-lt p1, v0, :cond_1

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mLine:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public compareToken(ILjava/lang/String;)Z
    .locals 6
    .parameter "tokenIndex"
    .parameter "str"

    .prologue
    const/4 v5, 0x0

    .line 220
    if-ltz p1, :cond_0

    iget v3, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenCount:I

    if-lt p1, v3, :cond_1

    .line 221
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenStart:[I

    aget v2, v3, p1

    .line 223
    .local v2, pos:I
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenEnd:[I

    aget v3, v3, p1

    sub-int v1, v3, v2

    .line 224
    .local v1, len:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_2

    move v3, v5

    .line 231
    :goto_0
    return v3

    .line 226
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 227
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mLine:[B

    aget-byte v3, v3, v2

    int-to-char v3, v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_3

    move v3, v5

    .line 228
    goto :goto_0

    .line 229
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public eof()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mEOF:Z

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mLineCount:I

    return v0
.end method

.method protected getLineLength()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mPosInLine:I

    return v0
.end method

.method public getSkipEmptyLine()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mSkipEmptyLine:Z

    return v0
.end method

.method public getTokenCount()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenCount:I

    return v0
.end method

.method public getTokenFloat(I)F
    .locals 3
    .parameter "tokenIndex"

    .prologue
    .line 215
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenCount:I

    if-lt p1, v0, :cond_1

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mLine:[B

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenStart:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenEnd:[I

    aget v2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->parseFloat([BII)F

    move-result v0

    return v0
.end method

.method public getTokenInt(I)I
    .locals 3
    .parameter "tokenIndex"

    .prologue
    .line 210
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenCount:I

    if-lt p1, v0, :cond_1

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mLine:[B

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenStart:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenEnd:[I

    aget v2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->parseInt([BII)I

    move-result v0

    return v0
.end method

.method public getTokenString(I)Ljava/lang/String;
    .locals 4
    .parameter "tokenIndex"

    .prologue
    .line 203
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenCount:I

    if-lt p1, v2, :cond_1

    .line 204
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenStart:[I

    aget v1, v2, p1

    .line 206
    .local v1, start:I
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenEnd:[I

    aget v2, v2, p1

    sub-int v0, v2, v1

    .line 207
    .local v0, len:I
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mLine:[B

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method protected isCommentChar(B)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 146
    const/16 v0, 0x23

    if-ne p1, v0, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSpace(B)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v1, 0x1

    .line 139
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 143
    :goto_0
    return v0

    .line 141
    :cond_1
    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 142
    goto :goto_0

    .line 143
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextLine()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->readLine()V

    .line 187
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->parseLine()V

    .line 188
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mSkipEmptyLine:Z

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->eof()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->readLine()V

    .line 191
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->parseLine()V

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method protected parseLine()V
    .locals 5

    .prologue
    .line 151
    const/4 v3, -0x1

    iput v3, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mCommentStart:I

    .line 152
    const/4 v3, 0x0

    iput v3, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenCount:I

    .line 153
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getLineLength()I

    move-result v1

    .line 154
    .local v1, len:I
    const/4 v2, 0x0

    .line 155
    .local v2, pos:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 157
    :goto_1
    if-ge v2, v1, :cond_0

    .line 158
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->charAt(I)B

    move-result v0

    .line 159
    .local v0, ch:B
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->isCommentChar(B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    iput v2, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mCommentStart:I

    .line 162
    move v2, v1

    .line 172
    .end local v0           #ch:B
    :cond_0
    if-lt v2, v1, :cond_3

    .line 180
    :cond_1
    return-void

    .line 165
    .restart local v0       #ch:B
    :cond_2
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->isSpace(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    add-int/lit8 v2, v2, 0x1

    .line 171
    goto :goto_1

    .line 174
    .end local v0           #ch:B
    :cond_3
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenStart:[I

    iget v4, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenCount:I

    aput v2, v3, v4

    .line 175
    :goto_2
    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->charAt(I)B

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->isSpace(B)Z

    move-result v3

    if-nez v3, :cond_4

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 177
    :cond_4
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenEnd:[I

    iget v4, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenCount:I

    aput v2, v3, v4

    .line 178
    iget v3, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mTokenCount:I

    goto :goto_0
.end method

.method protected read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget v1, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mUnread:I

    if-gez v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mReader:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 110
    :goto_0
    return v1

    .line 108
    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mUnread:I

    .line 109
    .local v0, ret:I
    const/4 v1, -0x1

    iput v1, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mUnread:I

    move v1, v0

    .line 110
    goto :goto_0
.end method

.method protected readLine()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->setLineEmpty()V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->read()I

    move-result v0

    .line 119
    .local v0, ch:I
    if-gez v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getLineLength()I

    move-result v1

    if-lez v1, :cond_1

    .line 135
    :goto_0
    iget v1, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mLineCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mLineCount:I

    .line 136
    :goto_1
    return-void

    .line 124
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mEOF:Z

    goto :goto_1

    .line 129
    :cond_2
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->appendToLine(I)V

    .line 131
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method protected setLineEmpty()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mPosInLine:I

    .line 90
    return-void
.end method

.method public setSkipEmptyLine(Z)V
    .locals 0
    .parameter "skip"

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mSkipEmptyLine:Z

    .line 286
    return-void
.end method

.method protected unread(I)V
    .locals 0
    .parameter "ch"

    .prologue
    .line 113
    iput p1, p0, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->mUnread:I

    .line 114
    return-void
.end method
