package com.android.launcher2; class ItemInfo {/*

.class public Lcom/android/launcher2/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:J

.field public id:J

.field public isGesture:Z

.field public itemFlags:I

.field public itemType:I

.field public launchCount:I

.field public screenId:J

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v2, -0x1

    #v2=(Byte);
    const-wide/16 v0, -0x1

    .line 143
    #v0=(LongLo);v1=(LongHi);
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    #p0=(Reference);
    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->id:J

    .line 101
    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 106
    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 111
    iput v2, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 116
    iput v2, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 121
    iput v4, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 126
    iput v4, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 131
    iput v3, p0, Lcom/android/launcher2/ItemInfo;->launchCount:I

    .line 136
    iput-boolean v3, p0, Lcom/android/launcher2/ItemInfo;->isGesture:Z

    .line 143
    return-void
.end method

.method public static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    #v4=(Integer);
    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 184
    .local v2, size:I
    #v2=(Integer);
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #v1=(UninitRef);
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 186
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    #v1=(Reference);
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #v3=(Reference);
    const/16 v4, 0x64

    #v4=(PosByte);
    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 187
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 188
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 189
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 192
    :goto_0
    #v0=(Conflicted);v4=(Conflicted);
    return-object v3

    .line 190
    :catch_0
    #v0=(Uninit);v3=(Conflicted);v4=(Integer);
    move-exception v3

    #v3=(Reference);
    move-object v0, v3

    .line 191
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference);
    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    #v4=(Reference);
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_0
.end method

.method public static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "values"
    .parameter "bitmap"

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    invoke-static {p1}, Lcom/android/launcher2/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 199
    .local v0, data:[B
    #v0=(Reference);
    const-string v1, "icon"

    #v1=(Reference);
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 201
    .end local v0           #data:[B
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/launcher2/ItemInfo;
    .locals 2

    .prologue
    .line 216
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/ItemInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 217
    :catch_0
    move-exception v1

    #v1=(Reference);
    move-object v0, v1

    .line 218
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    #v0=(Reference);
    new-instance v1, Ljava/lang/AssertionError;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #v1=(Reference);
    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/launcher2/ItemInfo;->clone()Lcom/android/launcher2/ItemInfo;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public load(Landroid/database/Cursor;)V
    .locals 6
    .parameter "c"

    .prologue
    const/16 v5, 0xc

    #v5=(PosByte);
    const/16 v4, 0xb

    #v4=(PosByte);
    const/16 v3, 0xa

    #v3=(PosByte);
    const/4 v2, 0x0

    .line 149
    #v2=(Null);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->id:J

    .line 150
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 151
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 152
    const/16 v0, 0xd

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 153
    const/16 v0, 0xe

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 154
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    :goto_2
    #v0=(LongLo);
    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 155
    const/16 v0, 0x8

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 156
    const/4 v0, 0x7

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #v0=(LongLo);
    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 157
    const/16 v0, 0x11

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->launchCount:I

    .line 158
    const/16 v0, 0x13

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->itemFlags:I

    .line 159
    return-void

    .line 150
    :cond_0
    #v0=(Boolean);
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    goto :goto_0

    .line 151
    :cond_1
    #v0=(Boolean);
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    goto :goto_1

    .line 154
    :cond_2
    #v0=(Boolean);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #v0=(LongLo);
    goto :goto_2
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 167
    const-string v0, "itemType"

    #v0=(Reference);
    iget v1, p0, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    iget-boolean v0, p0, Lcom/android/launcher2/ItemInfo;->isGesture:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 169
    const-string v0, "container"

    #v0=(Reference);
    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->container:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    const-string v0, "screen"

    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->screenId:J

    #v1=(LongLo);
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v0, "cellX"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v0, "cellY"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v0, "spanX"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v0, "spanY"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v0, "launchCount"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->launchCount:I

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string v0, "itemFlags"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->itemFlags:I

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method public onLaunch()V
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/android/launcher2/ItemInfo;->launchCount:I

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->launchCount:I

    .line 212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "Item(id="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->id:J

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

*/}
