.class public Landroid/text/util/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source "Rfc822Tokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crunch(Ljava/lang/StringBuilder;)V
    .locals 6
    .parameter "sb"

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x1

    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 177
    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 178
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 180
    .local v0, c:C
    if-nez v0, :cond_2

    .line 181
    if-eqz v1, :cond_0

    sub-int v3, v2, v4

    if-eq v1, v3, :cond_0

    sub-int v3, v1, v4

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_0

    sub-int v3, v1, v4

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_1

    .line 186
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 189
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v0           #c:C
    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_5

    .line 197
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4

    .line 198
    invoke-virtual {p0, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 196
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 201
    :cond_5
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V
    .locals 10
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, out:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/text/util/Rfc822Token;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v6, name:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, address:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v2, comment:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 51
    .local v1, i:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .local v3, cursor:I
    move v4, v1

    .line 53
    .end local v1           #i:I
    .local v4, i:I
    :cond_0
    :goto_0
    if-ge v4, v3, :cond_11

    .line 54
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 56
    .local v1, c:C
    const/16 v5, 0x2c

    if-eq v1, v5, :cond_1

    const/16 v5, 0x3b

    if-ne v1, v5, :cond_5

    .line 57
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 59
    :goto_1
    if-ge v4, v3, :cond_2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0x20

    if-ne v5, v7, :cond_2

    .line 60
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 63
    :cond_2
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 66
    new-instance v5, Landroid/text/util/Rfc822Token;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v7, v8, v9}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_3
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 76
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 70
    new-instance v5, Landroid/text/util/Rfc822Token;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v7, v8, v9}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 78
    :cond_5
    const/16 v5, 0x22

    if-ne v1, v5, :cond_8

    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 81
    :goto_3
    if-ge v4, v3, :cond_0

    .line 82
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 84
    const/16 v5, 0x22

    if-ne v1, v5, :cond_6

    .line 85
    add-int/lit8 v4, v4, 0x1

    .line 86
    goto :goto_0

    .line 87
    :cond_6
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_7

    add-int/lit8 v5, v4, 0x1

    if-ge v5, v3, :cond_7

    .line 88
    add-int/lit8 v5, v4, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 91
    :cond_7
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 95
    :cond_8
    const/16 v5, 0x28

    if-ne v1, v5, :cond_d

    .line 96
    const/4 v5, 0x1

    .line 97
    .local v5, level:I
    add-int/lit8 v4, v4, 0x1

    .line 99
    :goto_4
    if-ge v4, v3, :cond_0

    if-lez v5, :cond_0

    .line 100
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 102
    const/16 v7, 0x29

    if-ne v1, v7, :cond_a

    .line 103
    const/4 v7, 0x1

    if-le v5, v7, :cond_9

    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    :cond_9
    add-int/lit8 v5, v5, -0x1

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 109
    :cond_a
    const/16 v7, 0x28

    if-ne v1, v7, :cond_b

    .line 110
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    add-int/lit8 v5, v5, 0x1

    .line 112
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 113
    :cond_b
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_c

    add-int/lit8 v7, v4, 0x1

    if-ge v7, v3, :cond_c

    .line 114
    add-int/lit8 v7, v4, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    .line 117
    :cond_c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 121
    .end local v5           #level:I
    :cond_d
    const/16 v5, 0x3c

    if-ne v1, v5, :cond_f

    .line 122
    add-int/lit8 v4, v4, 0x1

    .line 124
    :goto_5
    if-ge v4, v3, :cond_0

    .line 125
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 127
    const/16 v5, 0x3e

    if-ne v1, v5, :cond_e

    .line 128
    add-int/lit8 v4, v4, 0x1

    .line 129
    goto/16 :goto_0

    .line 131
    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 135
    :cond_f
    const/16 v5, 0x20

    if-ne v1, v5, :cond_10

    .line 136
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 139
    :cond_10
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 144
    .end local v1           #c:C
    :cond_11
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    .end local p0
    if-lez p0, :cond_13

    .line 147
    new-instance p0, Landroid/text/util/Rfc822Token;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0           #address:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2           #comment:Ljava/lang/StringBuilder;
    invoke-direct {p0, v1, v0, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_12
    :goto_6
    return-void

    .line 150
    .restart local v0       #address:Ljava/lang/StringBuilder;
    .restart local v2       #comment:Ljava/lang/StringBuilder;
    :cond_13
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_12

    .line 151
    new-instance p0, Landroid/text/util/Rfc822Token;

    const/4 v0, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .end local v0           #address:Ljava/lang/StringBuilder;
    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2           #comment:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, v1, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public static tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    .locals 2
    .parameter "text"

    .prologue
    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p0, v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 170
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/util/Rfc822Token;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/text/util/Rfc822Token;

    return-object p0
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 8
    .parameter "text"
    .parameter "cursor"

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x28

    const/16 v5, 0x22

    .line 238
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 239
    .local v2, len:I
    move v1, p2

    .line 241
    .local v1, i:I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_1

    .line 242
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 244
    .local v0, c:C
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_2

    .line 298
    .end local v0           #c:C
    :cond_1
    return v1

    .line 246
    .restart local v0       #c:C
    :cond_2
    if-ne v0, v5, :cond_5

    .line 247
    add-int/lit8 v1, v1, 0x1

    .line 249
    :goto_1
    if-ge v1, v2, :cond_0

    .line 250
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 252
    if-ne v0, v5, :cond_3

    .line 253
    add-int/lit8 v1, v1, 0x1

    .line 254
    goto :goto_0

    .line 255
    :cond_3
    if-ne v0, v7, :cond_4

    .line 256
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 258
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    :cond_5
    if-ne v0, v6, :cond_9

    .line 262
    const/4 v3, 0x1

    .line 263
    .local v3, level:I
    add-int/lit8 v1, v1, 0x1

    .line 265
    :goto_2
    if-ge v1, v2, :cond_0

    if-lez v3, :cond_0

    .line 266
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 268
    const/16 v4, 0x29

    if-ne v0, v4, :cond_6

    .line 269
    add-int/lit8 v3, v3, -0x1

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 271
    :cond_6
    if-ne v0, v6, :cond_7

    .line 272
    add-int/lit8 v3, v3, 0x1

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 274
    :cond_7
    if-ne v0, v7, :cond_8

    .line 275
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 277
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 280
    .end local v3           #level:I
    :cond_9
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_b

    .line 281
    add-int/lit8 v1, v1, 0x1

    .line 283
    :goto_3
    if-ge v1, v2, :cond_0

    .line 284
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 286
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_a

    .line 287
    add-int/lit8 v1, v1, 0x1

    .line 288
    goto :goto_0

    .line 290
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 294
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 4
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, best:I
    const/4 v1, 0x0

    .line 215
    .local v1, i:I
    :cond_0
    :goto_0
    if-ge v1, p2, :cond_2

    .line 216
    invoke-virtual {p0, p1, v1}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 218
    if-ge v1, p2, :cond_0

    .line 219
    add-int/lit8 v1, v1, 0x1

    .line 221
    :goto_1
    if-ge v1, p2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    :cond_1
    if-ge v1, p2, :cond_0

    .line 226
    move v0, v1

    goto :goto_0

    .line 231
    :cond_2
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "text"

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
