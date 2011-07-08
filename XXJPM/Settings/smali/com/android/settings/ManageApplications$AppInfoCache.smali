.class Lcom/android/settings/ManageApplications$AppInfoCache;
.super Ljava/lang/Object;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoCache"
.end annotation


# static fields
.field private static final DEBUG_CACHE:Z = false

.field private static final DEBUG_CACHE_TIME:Z = false

.field private static final FILE_BUFFER_SIZE:I = 0x400

.field static final FILE_CACHE:Z = true

.field private static final mFileCacheName:Ljava/lang/String; = "ManageAppsInfo.txt"


# instance fields
.field private mAppPropCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/ManageApplications$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/ManageApplications;)V
    .locals 1
    .parameter

    .prologue
    .line 1743
    iput-object p1, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1749
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/ManageApplications$AppInfoCache;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1743
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoCache;->isEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1743
    invoke-direct {p0, p1}, Lcom/android/settings/ManageApplications$AppInfoCache;->getEntry(Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/ManageApplications$AppInfoCache;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1743
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoCache;->getPkgList()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settings/ManageApplications$AppInfoCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1743
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoCache;->loadCache()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/settings/ManageApplications$AppInfoCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1743
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoCache;->updateCache()V

    return-void
.end method

.method private getEntry(Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/ManageApplications$AppInfo;

    return-object p0
.end method

.method private getPkgList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadCache()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "disableCache"

    .line 1906
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->this$0:Lcom/android/settings/ManageApplications;

    const-string v4, "ManageAppsInfo.prefs"

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/ManageApplications;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1907
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v3, "disableCache"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1908
    .local v0, disable:Z
    if-eqz v0, :cond_0

    const-string v3, "ManageApplications"

    const-string v4, "Cache has been disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1911
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "disableCache"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1912
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1913
    if-nez v0, :cond_1

    .line 1914
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoCache;->readFromFile()V

    .line 1916
    const-string v3, "disableCache"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1917
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1919
    :cond_1
    return-void
.end method

.method private readFromFile()V
    .locals 17

    .prologue
    .line 1776
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->this$0:Lcom/android/settings/ManageApplications;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/settings/ManageApplications;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "ManageAppsInfo.txt"

    invoke-direct {v11, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1777
    .local v11, cacheFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1845
    :cond_0
    :goto_0
    return-void

    .line 1780
    :cond_1
    const/4 v14, 0x0

    .line 1781
    .local v14, fis:Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 1783
    .local v13, err:Z
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    .end local v14           #fis:Ljava/io/FileInputStream;
    invoke-direct {v14, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1790
    .restart local v14       #fis:Ljava/io/FileInputStream;
    const/16 v2, 0x400

    :try_start_1
    new-array v10, v2, [B

    .line 1791
    .local v10, byteBuff:[B
    const/4 v2, 0x2

    new-array v15, v2, [B

    .line 1792
    .local v15, lenBytes:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1793
    :goto_1
    invoke-virtual {v14}, Ljava/io/FileInputStream;->available()I

    move-result v2

    if-lez v2, :cond_3

    .line 1794
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v14, v15, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 1795
    const/4 v2, 0x0

    aget-byte v2, v15, v2

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, v15, v3

    or-int v8, v2, v3

    .line 1796
    .local v8, buffLen:I
    if-lez v8, :cond_2

    array-length v2, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-le v8, v2, :cond_5

    .line 1797
    :cond_2
    const/4 v13, 0x1

    .line 1831
    .end local v8           #buffLen:I
    :cond_3
    :goto_2
    if-eqz v14, :cond_4

    .line 1833
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1839
    :cond_4
    :goto_3
    if-eqz v13, :cond_0

    .line 1840
    const-string v2, "ManageApplications"

    const-string v3, "Failed to load cache. Not using cache for now."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 1784
    .end local v10           #byteBuff:[B
    .end local v14           #fis:Ljava/io/FileInputStream;
    .end local v15           #lenBytes:[B
    :catch_0
    move-exception v2

    move-object v12, v2

    .line 1785
    .local v12, e:Ljava/io/FileNotFoundException;
    const-string v2, "ManageApplications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error opening file for read operation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1801
    .end local v12           #e:Ljava/io/FileNotFoundException;
    .restart local v8       #buffLen:I
    .restart local v10       #byteBuff:[B
    .restart local v14       #fis:Ljava/io/FileInputStream;
    .restart local v15       #lenBytes:[B
    :cond_5
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v14, v10, v2, v8}, Ljava/io/FileInputStream;->read([BII)I

    .line 1802
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    .line 1807
    .local v9, buffStr:Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1808
    .local v16, substrs:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move v2, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_6

    .line 1810
    const/4 v13, 0x1

    .line 1811
    goto :goto_2

    .line 1813
    :cond_6
    const-wide/16 v5, -0x1

    .line 1814
    .local v5, size:J
    const/4 v3, -0x1

    .line 1816
    .local v3, idx:I
    const/4 v2, 0x1

    :try_start_4
    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v5

    .line 1824
    :try_start_5
    new-instance v1, Lcom/android/settings/ManageApplications$AppInfo;

    const/4 v2, 0x0

    aget-object v2, v16, v2

    const/4 v4, 0x3

    aget-object v4, v16, v4

    const/4 v7, 0x2

    aget-object v7, v16, v7

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/ManageApplications$AppInfo;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 1825
    .local v1, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    move-object v2, v0

    iget-object v3, v1, Lcom/android/settings/ManageApplications$AppInfo;->pkgName:Ljava/lang/String;

    .end local v3           #idx:I
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 1827
    .end local v1           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v5           #size:J
    .end local v8           #buffLen:I
    .end local v9           #buffStr:Ljava/lang/String;
    .end local v10           #byteBuff:[B
    .end local v15           #lenBytes:[B
    .end local v16           #substrs:[Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v12, v2

    .line 1828
    .local v12, e:Ljava/io/IOException;
    :try_start_6
    const-string v2, "ManageApplications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed reading from file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1829
    const/4 v13, 0x1

    .line 1831
    if-eqz v14, :cond_7

    .line 1833
    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1839
    :cond_7
    :goto_4
    if-eqz v13, :cond_0

    .line 1840
    const-string v2, "ManageApplications"

    const-string v3, "Failed to load cache. Not using cache for now."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto/16 :goto_0

    .line 1817
    .end local v12           #e:Ljava/io/IOException;
    .restart local v3       #idx:I
    .restart local v5       #size:J
    .restart local v8       #buffLen:I
    .restart local v9       #buffStr:Ljava/lang/String;
    .restart local v10       #byteBuff:[B
    .restart local v15       #lenBytes:[B
    .restart local v16       #substrs:[Ljava/lang/String;
    :catch_2
    move-exception v2

    move-object v12, v2

    .line 1818
    .local v12, e:Ljava/lang/NumberFormatException;
    const/4 v13, 0x1

    .line 1819
    goto/16 :goto_2

    .line 1834
    .end local v3           #idx:I
    .end local v5           #size:J
    .end local v8           #buffLen:I
    .end local v9           #buffStr:Ljava/lang/String;
    .end local v12           #e:Ljava/lang/NumberFormatException;
    .end local v16           #substrs:[Ljava/lang/String;
    :catch_3
    move-exception v12

    .line 1835
    .local v12, e:Ljava/io/IOException;
    const-string v2, "ManageApplications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1834
    .end local v10           #byteBuff:[B
    .end local v15           #lenBytes:[B
    :catch_4
    move-exception v12

    .line 1835
    const-string v2, "ManageApplications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    const/4 v13, 0x1

    goto :goto_4

    .line 1831
    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_8

    .line 1833
    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1839
    :cond_8
    :goto_5
    if-eqz v13, :cond_9

    .line 1840
    const-string v3, "ManageApplications"

    const-string v4, "Failed to load cache. Not using cache for now."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :cond_9
    throw v2

    .line 1834
    :catch_5
    move-exception v12

    .line 1835
    .restart local v12       #e:Ljava/io/IOException;
    const-string v3, "ManageApplications"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    const/4 v13, 0x1

    goto :goto_5
.end method

.method private updateCache()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "disableCache"

    .line 1922
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->this$0:Lcom/android/settings/ManageApplications;

    const-string v4, "ManageAppsInfo.prefs"

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/ManageApplications;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1923
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1924
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "disableCache"

    const/4 v3, 0x1

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1925
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1927
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoCache;->writeToFile()Z

    move-result v2

    .line 1928
    .local v2, writeStatus:Z
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1929
    if-eqz v2, :cond_0

    .line 1931
    const-string v3, "disableCache"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1932
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1935
    :cond_0
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/settings/ManageApplications$AppInfo;)V
    .locals 2
    .parameter "aInfo"

    .prologue
    .line 1764
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/settings/ManageApplications$AppInfo;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1765
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/settings/ManageApplications$AppInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    :cond_0
    return-void
.end method

.method public removeEntry(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 1770
    if-eqz p1, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    :cond_0
    return-void
.end method

.method writeToFile()Z
    .locals 21

    .prologue
    .line 1848
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/ManageApplications;->getFilesDir()Ljava/io/File;

    move-result-object v18

    const-string v19, "ManageAppsInfo.txt"

    move-object v0, v7

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1849
    .local v7, cacheFile:Ljava/io/File;
    const/4 v9, 0x0

    .line 1851
    .local v9, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1852
    .local v16, opStartTime:J
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1853
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .local v10, fos:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 1854
    .local v13, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object v15, v0

    .line 1855
    .local v15, lenBytes:[B
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1856
    .local v12, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/ManageApplications$AppInfo;

    .line 1857
    .local v4, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v0, v4

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1858
    .local v5, buff:Ljava/lang/StringBuilder;
    const-string v18, ","

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    move-object v0, v4

    iget-wide v0, v0, Lcom/android/settings/ManageApplications$AppInfo;->size:J

    move-wide/from16 v18, v0

    move-object v0, v5

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1860
    const-string v18, ","

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1861
    move-object v0, v4

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfo;->appSize:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1862
    const-string v18, ","

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1863
    move-object v0, v4

    iget-object v0, v0, Lcom/android/settings/ManageApplications$AppInfo;->appName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1869
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1870
    .local v6, byteBuff:[B
    array-length v14, v6

    .line 1871
    .local v14, len:I
    move-object v0, v6

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x400

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 1873
    const/16 v14, 0x400

    .line 1876
    :cond_0
    const/16 v18, 0x1

    move v0, v14

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v15, v18

    .line 1877
    const/16 v18, 0x0

    const v19, 0xff00

    and-int v19, v19, v14

    shr-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v15, v18

    .line 1878
    const/16 v18, 0x0

    const/16 v19, 0x2

    move-object v0, v10

    move-object v1, v15

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1879
    const/16 v18, 0x0

    move-object v0, v10

    move-object v1, v6

    move/from16 v2, v18

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6

    goto/16 :goto_0

    .line 1880
    .end local v6           #byteBuff:[B
    .end local v14           #len:I
    :catch_0
    move-exception v18

    move-object/from16 v8, v18

    .line 1881
    .local v8, e:Ljava/io/IOException;
    :try_start_3
    const-string v18, "ManageApplications"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to write to file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6

    .line 1882
    const/16 v18, 0x0

    .line 1894
    if-eqz v10, :cond_1

    .line 1896
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    move-object v9, v10

    .line 1899
    .end local v4           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v5           #buff:Ljava/lang/StringBuilder;
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #key:Ljava/lang/String;
    .end local v13           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15           #lenBytes:[B
    .end local v16           #opStartTime:J
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return v18

    .line 1897
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .restart local v5       #buff:Ljava/lang/StringBuilder;
    .restart local v8       #e:Ljava/io/IOException;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #key:Ljava/lang/String;
    .restart local v13       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15       #lenBytes:[B
    .restart local v16       #opStartTime:J
    :catch_1
    move-exception v8

    .line 1898
    const-string v18, "ManageApplications"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed closing file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const/16 v18, 0x0

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 1888
    .end local v4           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v5           #buff:Ljava/lang/StringBuilder;
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v12           #key:Ljava/lang/String;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :cond_3
    const/16 v18, 0x1

    .line 1894
    if-eqz v10, :cond_4

    .line 1896
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    move-object v9, v10

    .line 1899
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 1897
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v8

    .line 1898
    .restart local v8       #e:Ljava/io/IOException;
    const-string v18, "ManageApplications"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed closing file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const/16 v18, 0x0

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 1889
    .end local v8           #e:Ljava/io/IOException;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15           #lenBytes:[B
    .end local v16           #opStartTime:J
    :catch_3
    move-exception v18

    move-object/from16 v8, v18

    .line 1890
    .local v8, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_6
    const-string v18, "ManageApplications"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error opening file for write operation : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1892
    const/16 v18, 0x0

    .line 1894
    if-eqz v9, :cond_2

    .line 1896
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    .line 1897
    :catch_4
    move-exception v8

    .line 1898
    .local v8, e:Ljava/io/IOException;
    const-string v18, "ManageApplications"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed closing file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1894
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_3
    if-eqz v9, :cond_5

    .line 1896
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1899
    :cond_5
    throw v18

    .line 1897
    :catch_5
    move-exception v8

    .line 1898
    .restart local v8       #e:Ljava/io/IOException;
    const-string v18, "ManageApplications"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed closing file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1894
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #opStartTime:J
    :catchall_1
    move-exception v18

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1889
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v18

    move-object/from16 v8, v18

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method
