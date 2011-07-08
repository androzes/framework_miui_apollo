.class public Lcom/android/settings/flipfont/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field public static final CHMOD_COMMAND:Ljava/lang/String; = "chmod 777 "

.field public static final FONT_DIRECTORY:Ljava/lang/String; = "fonts"

.field public static final LOC_DIRECTORY:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts"

.field public static final MONOSPACE_LOC_NAME:Ljava/lang/String; = "monospace.loc"

.field public static final SANS_LOC_NAME:Ljava/lang/String; = "sans.loc"

.field public static final SERIF_LOC_NAME:Ljava/lang/String; = "serif.loc"

.field private static TAG:Ljava/lang/String;


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "FontWriter"

    sput-object v0, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 28
    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 29
    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .parameter "FontDir"
    .parameter "folderName"

    .prologue
    .line 122
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v3, newDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, tmp:[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 126
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 128
    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v1           #file:Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 135
    .end local v2           #i:I
    .local v0, bRet:Z
    :goto_1
    return v0

    .line 134
    .end local v0           #bRet:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #bRet:Z
    goto :goto_1
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .locals 4
    .parameter "fontPath"

    .prologue
    .line 143
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 144
    .local v1, run:Ljava/lang/Runtime;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 145
    .local v0, myProcess:Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 146
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot chmod"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    .end local v0           #myProcess:Ljava/lang/Process;
    .end local v1           #run:Ljava/lang/Runtime;
    :catch_0
    move-exception v2

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 15
    .parameter "directory"
    .parameter "is"
    .parameter "destination"

    .prologue
    .line 165
    move-object/from16 v10, p2

    .line 166
    .local v10, myInputStream:Ljava/io/InputStream;
    move-object/from16 v9, p1

    .line 167
    .local v9, myDirectory:Ljava/io/File;
    move-object/from16 v8, p3

    .line 168
    .local v8, myDestination:Ljava/lang/String;
    const-string v0, ""

    .line 171
    .local v0, absolutePath:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .local v2, dest:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 173
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 176
    new-instance v12, Ljava/io/BufferedOutputStream;

    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 178
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 180
    .local v1, b:[B
    const/4 v11, 0x0

    .line 181
    .local v11, read:I
    :goto_0
    invoke-virtual {v10, v1}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_5

    .line 182
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/4 v13, 0x0

    invoke-virtual {v12, v1, v13, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    .end local v1           #b:[B
    .end local v2           #dest:Ljava/io/File;
    .end local v11           #read:I
    :catch_0
    move-exception v12

    move-object v4, v12

    .line 190
    .local v4, ex:Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 192
    .local v6, length:J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_0

    .line 193
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 195
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    if-eqz v10, :cond_1

    .line 200
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 206
    :cond_1
    :goto_1
    :try_start_3
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_2

    .line 207
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 213
    :cond_2
    :goto_2
    :try_start_4
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_3

    .line 214
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 220
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:J
    :cond_3
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 223
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 224
    .restart local v5       #file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 225
    .restart local v6       #length:J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_4

    .line 226
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 228
    :cond_4
    return-void

    .line 184
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:J
    .restart local v1       #b:[B
    .restart local v2       #dest:Ljava/io/File;
    .restart local v11       #read:I
    :cond_5
    :try_start_5
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->flush()V

    .line 185
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 186
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 199
    if-eqz v10, :cond_6

    .line 200
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 206
    :cond_6
    :goto_4
    :try_start_7
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_7

    .line 207
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 213
    :cond_7
    :goto_5
    :try_start_8
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_3

    .line 214
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 216
    :catch_1
    move-exception v12

    move-object v3, v12

    .line 217
    .local v3, e:Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    .end local v1           #b:[B
    .end local v2           #dest:Ljava/io/File;
    .end local v11           #read:I
    :goto_6
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 198
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 199
    if-eqz v10, :cond_8

    .line 200
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 206
    :cond_8
    :goto_7
    :try_start_a
    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v13, :cond_9

    .line 207
    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 213
    :cond_9
    :goto_8
    :try_start_b
    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v13, :cond_a

    .line 214
    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 198
    :cond_a
    :goto_9
    throw v12

    .line 202
    :catch_2
    move-exception v3

    .line 203
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v13, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : myInputStream.close() error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 209
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v13

    move-object v3, v13

    .line 210
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v13, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : fOut.close() error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 216
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v13

    move-object v3, v13

    .line 217
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v13, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : bos.close() error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 202
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #ex:Ljava/lang/Exception;
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:J
    :catch_5
    move-exception v3

    .line 203
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 209
    .end local v3           #e:Ljava/io/IOException;
    :catch_6
    move-exception v12

    move-object v3, v12

    .line 210
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 216
    .end local v3           #e:Ljava/io/IOException;
    :catch_7
    move-exception v12

    move-object v3, v12

    .line 217
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    goto :goto_6

    .line 202
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:J
    .restart local v1       #b:[B
    .restart local v2       #dest:Ljava/io/File;
    .restart local v11       #read:I
    :catch_8
    move-exception v3

    .line 203
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 209
    .end local v3           #e:Ljava/io/IOException;
    :catch_9
    move-exception v12

    move-object v3, v12

    .line 210
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .parameter "context"
    .parameter "fontName"

    .prologue
    .line 85
    const-string v7, "fonts"

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 86
    .local v3, newFontDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .local v0, fontFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, tmp:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_0

    .line 93
    aget-object v7, v6, v1

    invoke-direct {p0, v3, v7}, Lcom/android/settings/flipfont/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 100
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 101
    .local v4, run:Ljava/lang/Runtime;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod 777 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 103
    .local v2, myProcess:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 104
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v7

    if-eqz v7, :cond_1

    .line 105
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Cannot chmod"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    .end local v2           #myProcess:Ljava/lang/Process;
    .end local v4           #run:Ljava/lang/Runtime;
    .end local v5           #s:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 114
    :cond_1
    :goto_1
    return-object v0

    .line 111
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "filename"
    .parameter "directory"

    .prologue
    const-string v8, "writeLoc : osw.close() error"

    const-string v7, "writeLoc : fOut.close() error"

    .line 46
    const-string v0, ""

    .line 48
    .local v0, absolutePath:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/app_fonts"

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .local v1, dest:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 53
    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 54
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 55
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 56
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 63
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_0

    .line 64
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_1

    .line 71
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 77
    .end local v1           #dest:Ljava/io/File;
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 78
    return-void

    .line 66
    .restart local v1       #dest:Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 67
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : osw.close() error"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 74
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : fOut.close() error"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 58
    .end local v1           #dest:Ljava/io/File;
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    move-object v3, v4

    .line 59
    .local v3, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    :try_start_4
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_2

    .line 64
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 70
    :cond_2
    :goto_2
    :try_start_5
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_1

    .line 71
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 73
    :catch_3
    move-exception v4

    move-object v2, v4

    .line 74
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : fOut.close() error"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 66
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v4

    move-object v2, v4

    .line 67
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : osw.close() error"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 62
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 63
    :try_start_6
    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_3

    .line 64
    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 70
    :cond_3
    :goto_3
    :try_start_7
    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_4

    .line 71
    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 75
    :cond_4
    :goto_4
    throw v4

    .line 66
    :catch_5
    move-exception v5

    move-object v2, v5

    .line 67
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "writeLoc : osw.close() error"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 73
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v5

    move-object v2, v5

    .line 74
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "writeLoc : fOut.close() error"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
