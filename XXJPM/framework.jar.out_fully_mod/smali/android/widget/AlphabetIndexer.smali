.class public Landroid/widget/AlphabetIndexer;
.super Landroid/database/DataSetObserver;
.source "AlphabetIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetLength:I

.field private mCollator:Ljava/text/Collator;

.field protected mColumnIndex:I

.field protected mDataCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 5
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "alphabet"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 85
    iput p2, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    .line 86
    iput-object p3, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 87
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    .line 88
    iget v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    if-ge v0, v2, :cond_0

    .line 90
    iget-object v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    new-instance v2, Landroid/util/SparseIntArray;

    iget v3, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v2, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 93
    if-eqz p1, :cond_1

    .line 94
    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 105
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 106
    .local v1, myLocale:Ljava/util/Locale;
    const-string v2, "Country="

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    new-instance v2, Ljava/util/Locale;

    const-string v3, "en"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    .line 112
    :goto_1
    iget-object v2, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/text/Collator;->setStrength(I)V

    .line 115
    return-void

    .line 110
    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    goto :goto_1
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "word"
    .parameter "letter"

    .prologue
    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string v0, " "

    .line 151
    .local v0, firstLetter:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, v0, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 148
    .end local v0           #firstLetter:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #firstLetter:Ljava/lang/String;
    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 19
    .parameter "sectionIndex"

    .prologue
    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    move-object v3, v0

    .line 165
    .local v3, alphaMap:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    move-object v6, v0

    .line 167
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 168
    :cond_0
    const/16 v17, 0x0

    .line 265
    :goto_0
    return v17

    .line 172
    :cond_1
    if-gtz p1, :cond_2

    .line 173
    const/16 v17, 0x0

    goto :goto_0

    .line 175
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    .line 176
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int p1, v17, v18

    .line 179
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    .line 181
    .local v14, savedCursorPos:I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 182
    .local v4, count:I
    const/4 v15, 0x0

    .line 183
    .local v15, start:I
    move v8, v4

    .line 186
    .local v8, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 187
    .local v10, letter:C
    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v16

    .line 188
    .local v16, targetLetter:Ljava/lang/String;
    move v9, v10

    .line 190
    .local v9, key:I
    const/high16 v17, -0x8000

    const/high16 v18, -0x8000

    move-object v0, v3

    move v1, v9

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .local v11, pos:I
    move/from16 v0, v17

    move v1, v11

    if-eq v0, v1, :cond_4

    .line 194
    if-gez v11, :cond_7

    .line 195
    neg-int v11, v11

    .line 196
    move v8, v11

    .line 204
    :cond_4
    if-lez p1, :cond_5

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    sub-int v18, p1, v18

    invoke-interface/range {v17 .. v18}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .line 207
    .local v12, prevLetter:I
    const/high16 v17, -0x8000

    move-object v0, v3

    move v1, v12

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 208
    .local v13, prevLetterPos:I
    const/high16 v17, -0x8000

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 209
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 215
    .end local v12           #prevLetter:I
    .end local v13           #prevLetterPos:I
    :cond_5
    add-int v17, v8, v15

    div-int/lit8 v11, v17, 0x2

    .line 217
    :goto_1
    if-ge v11, v8, :cond_6

    .line 219
    invoke-interface {v6, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    move/from16 v17, v0

    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, curName:Ljava/lang/String;
    if-nez v5, :cond_9

    .line 222
    if-nez v11, :cond_8

    .line 263
    .end local v5           #curName:Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-virtual {v3, v9, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 264
    invoke-interface {v6, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    move/from16 v17, v11

    .line 265
    goto/16 :goto_0

    :cond_7
    move/from16 v17, v11

    .line 199
    goto/16 :goto_0

    .line 225
    .restart local v5       #curName:Ljava/lang/String;
    :cond_8
    add-int/lit8 v11, v11, -0x1

    .line 226
    goto :goto_1

    .line 229
    :cond_9
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/AlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 230
    .local v7, diff:I
    if-eqz v7, :cond_c

    .line 242
    if-gez v7, :cond_a

    .line 243
    add-int/lit8 v15, v11, 0x1

    .line 244
    if-lt v15, v4, :cond_b

    .line 245
    move v11, v4

    .line 246
    goto :goto_2

    .line 249
    :cond_a
    move v8, v11

    .line 261
    :cond_b
    :goto_3
    add-int v17, v15, v8

    div-int/lit8 v11, v17, 0x2

    .line 262
    goto :goto_1

    .line 253
    :cond_c
    if-eq v15, v11, :cond_6

    .line 258
    move v8, v11

    goto :goto_3
.end method

.method public getSectionForPosition(I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 273
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 274
    .local v3, savedCursorPos:I
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 275
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    iget v6, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, curName:Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 279
    if-eqz v0, :cond_1

    .line 282
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    if-ge v1, v5, :cond_1

    .line 283
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 284
    .local v2, letter:C
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, targetLetter:Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Landroid/widget/AlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    move v5, v1

    .line 291
    .end local v1           #i:I
    .end local v2           #letter:C
    .end local v4           #targetLetter:Ljava/lang/String;
    :goto_1
    return v5

    .line 282
    .restart local v1       #i:I
    .restart local v2       #letter:C
    .restart local v4       #targetLetter:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v1           #i:I
    .end local v2           #letter:C
    .end local v4           #targetLetter:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 300
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 301
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 308
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 309
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 310
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 133
    :cond_0
    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 134
    if-eqz p1, :cond_1

    .line 135
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 137
    :cond_1
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 138
    return-void
.end method
