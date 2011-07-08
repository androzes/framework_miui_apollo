.class public Landroid/webkit/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field public static final PLUGIN_ACTION:Ljava/lang/String; = "android.webkit.PLUGIN"

.field public static final PLUGIN_PERMISSION:Ljava/lang/String; = "android.webkit.permission.PLUGIN"

.field private static final PLUGIN_TYPE:Ljava/lang/String; = "type"

.field private static final SIGNATURES:[Landroid/content/pm/Signature; = null

.field private static final SIGNATURE_1:Ljava/lang/String; = "308204c5308203ada003020102020900d7cb412f75f4887e300d06092a864886f70d010105050030819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f7261746564301e170d3039313030313030323331345a170d3337303231363030323331345a30819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f726174656430820120300d06092a864886f70d01010105000382010d0030820108028201010099724f3e05bbd78843794f357776e04b340e13cb1c9ccb3044865180d7d8fec8166c5bbd876da8b80aa71eb6ba3d4d3455c9a8de162d24a25c4c1cd04c9523affd06a279fc8f0d018f242486bdbb2dbfbf6fcb21ed567879091928b876f7ccebc7bccef157366ebe74e33ae1d7e9373091adab8327482154afc0693a549522f8c796dd84d16e24bb221f5dbb809ca56dd2b6e799c5fa06b6d9c5c09ada54ea4c5db1523a9794ed22a3889e5e05b29f8ee0a8d61efe07ae28f65dece2ff7edc5b1416d7c7aad7f0d35e8f4a4b964dbf50ae9aa6d620157770d974131b3e7e3abd6d163d65758e2f0822db9c88598b9db6263d963d13942c91fc5efe34fc1e06e3020103a382010630820102301d0603551d0e041604145af418e419a639e1657db960996364a37ef20d403081d20603551d230481ca3081c780145af418e419a639e1657db960996364a37ef20d40a181a3a481a030819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f7261746564820900d7cb412f75f4887e300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010076c2a11fe303359689c2ebc7b2c398eff8c3f9ad545cdbac75df63bf7b5395b6988d1842d6aa1556d595b5692e08224d667a4c9c438f05e74906c53dd8016dde7004068866f01846365efd146e9bfaa48c9ecf657f87b97c757da11f225c4a24177bf2d7188e6cce2a70a1e8a841a14471eb51457398b8a0addd8b6c8c1538ca8f1e40b4d8b960009ea22c188d28924813d2c0b4a4d334b7cf05507e1fcf0a06fe946c7ffc435e173af6fc3e3400643710acc806f830a14788291d46f2feed9fb5c70423ca747ed1572d752894ac1f19f93989766308579393fabb43649aa8806a313b1ab9a50922a44c2467b9062037f2da0d484d9ffd8fe628eeea629ba637"

.field private static final TYPE_NATIVE:Ljava/lang/String; = "native"

.field private static mInstance:Landroid/webkit/PluginManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPackageInfoCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/PluginManager;->mInstance:Landroid/webkit/PluginManager;

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "308204c5308203ada003020102020900d7cb412f75f4887e300d06092a864886f70d010105050030819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f7261746564301e170d3039313030313030323331345a170d3337303231363030323331345a30819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f726174656430820120300d06092a864886f70d01010105000382010d0030820108028201010099724f3e05bbd78843794f357776e04b340e13cb1c9ccb3044865180d7d8fec8166c5bbd876da8b80aa71eb6ba3d4d3455c9a8de162d24a25c4c1cd04c9523affd06a279fc8f0d018f242486bdbb2dbfbf6fcb21ed567879091928b876f7ccebc7bccef157366ebe74e33ae1d7e9373091adab8327482154afc0693a549522f8c796dd84d16e24bb221f5dbb809ca56dd2b6e799c5fa06b6d9c5c09ada54ea4c5db1523a9794ed22a3889e5e05b29f8ee0a8d61efe07ae28f65dece2ff7edc5b1416d7c7aad7f0d35e8f4a4b964dbf50ae9aa6d620157770d974131b3e7e3abd6d163d65758e2f0822db9c88598b9db6263d963d13942c91fc5efe34fc1e06e3020103a382010630820102301d0603551d0e041604145af418e419a639e1657db960996364a37ef20d403081d20603551d230481ca3081c780145af418e419a639e1657db960996364a37ef20d40a181a3a481a030819d310b3009060355040613025553311330110603550408130a43616c69666f726e69613111300f0603550407130853616e204a6f736531233021060355040a131a41646f62652053797374656d7320496e636f72706f7261746564311c301a060355040b1313496e666f726d6174696f6e2053797374656d73312330210603550403131a41646f62652053797374656d7320496e636f72706f7261746564820900d7cb412f75f4887e300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010076c2a11fe303359689c2ebc7b2c398eff8c3f9ad545cdbac75df63bf7b5395b6988d1842d6aa1556d595b5692e08224d667a4c9c438f05e74906c53dd8016dde7004068866f01846365efd146e9bfaa48c9ecf657f87b97c757da11f225c4a24177bf2d7188e6cce2a70a1e8a841a14471eb51457398b8a0addd8b6c8c1538ca8f1e40b4d8b960009ea22c188d28924813d2c0b4a4d334b7cf05507e1fcf0a06fe946c7ffc435e173af6fc3e3400643710acc806f830a14788291d46f2feed9fb5c70423ca747ed1572d752894ac1f19f93989766308579393fabb43649aa8806a313b1ab9a50922a44c2467b9062037f2da0d484d9ffd8fe628eeea629ba637"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/PluginManager;->SIGNATURES:[Landroid/content/pm/Signature;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroid/webkit/PluginManager;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    .line 84
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 87
    const-class v0, Landroid/webkit/PluginManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/PluginManager;->mInstance:Landroid/webkit/PluginManager;

    if-nez v1, :cond_1

    .line 88
    if-nez p0, :cond_0

    .line 89
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "First call to PluginManager need a valid context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 92
    :cond_0
    :try_start_1
    new-instance v1, Landroid/webkit/PluginManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/PluginManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/webkit/PluginManager;->mInstance:Landroid/webkit/PluginManager;

    .line 94
    :cond_1
    sget-object v1, Landroid/webkit/PluginManager;->mInstance:Landroid/webkit/PluginManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1
.end method


# virtual methods
.method getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .parameter "packageName"
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v2, p0, Landroid/webkit/PluginManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 259
    .local v1, pluginContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 260
    .local v0, pluginCL:Ljava/lang/ClassLoader;
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method

.method getPluginDirectories()[Ljava/lang/String;
    .locals 29

    .prologue
    .line 112
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v6, directories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/PluginManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 114
    .local v20, pm:Landroid/content/pm/PackageManager;
    new-instance v25, Landroid/content/Intent;

    const-string v26, "android.webkit.PLUGIN"

    invoke-direct/range {v25 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v26, 0x84

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v19

    .line 118
    .local v19, plugins:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 121
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 123
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 126
    .local v12, info:Landroid/content/pm/ResolveInfo;
    move-object v0, v12

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    .line 127
    .local v21, serviceInfo:Landroid/content/pm/ServiceInfo;
    if-nez v21, :cond_1

    .line 128
    const-string/jumbo v26, "webkit"

    const-string v27, "Ignore bad plugin"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v12           #info:Landroid/content/pm/ResolveInfo;
    .end local v21           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :catchall_0
    move-exception v26

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v26

    .line 135
    .restart local v12       #info:Landroid/content/pm/ResolveInfo;
    .restart local v21       #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_1
    :try_start_1
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x1040

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    .line 142
    .local v17, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v17, :cond_0

    .line 147
    :try_start_2
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/lib"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, directory:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 153
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object v15, v0

    .line 154
    .local v15, permissions:[Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 157
    const/4 v14, 0x0

    .line 158
    .local v14, permissionOk:Z
    move-object v3, v15

    .local v3, arr$:[Ljava/lang/String;
    array-length v13, v3

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v13, :cond_2

    aget-object v16, v3, v11

    .line 159
    .local v16, permit:Ljava/lang/String;
    const-string v26, "android.webkit.permission.PLUGIN"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 160
    const/4 v14, 0x1

    .line 164
    .end local v16           #permit:Ljava/lang/String;
    :cond_2
    if-eqz v14, :cond_0

    .line 169
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v24, v0

    .line 170
    .local v24, signatures:[Landroid/content/pm/Signature;
    if-eqz v24, :cond_0

    .line 173
    const-string v26, "ro.secure"

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 174
    const/16 v23, 0x0

    .line 175
    .local v23, signatureMatch:Z
    move-object/from16 v3, v24

    .local v3, arr$:[Landroid/content/pm/Signature;
    array-length v13, v3

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v13, :cond_6

    aget-object v22, v3, v11

    .line 176
    .local v22, signature:Landroid/content/pm/Signature;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    sget-object v26, Landroid/webkit/PluginManager;->SIGNATURES:[Landroid/content/pm/Signature;

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move v0, v9

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 177
    sget-object v26, Landroid/webkit/PluginManager;->SIGNATURES:[Landroid/content/pm/Signature;

    aget-object v26, v26, v9

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 178
    const/16 v23, 0x1

    .line 175
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 138
    .end local v3           #arr$:[Landroid/content/pm/Signature;
    .end local v7           #directory:Ljava/lang/String;
    .end local v9           #i:I
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v14           #permissionOk:Z
    .end local v15           #permissions:[Ljava/lang/String;
    .end local v17           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v22           #signature:Landroid/content/pm/Signature;
    .end local v23           #signatureMatch:Z
    .end local v24           #signatures:[Landroid/content/pm/Signature;
    :catch_0
    move-exception v26

    move-object/from16 v8, v26

    .line 139
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v26, "webkit"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Can\'t find plugin: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 158
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v3, arr$:[Ljava/lang/String;
    .restart local v7       #directory:Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v13       #len$:I
    .restart local v14       #permissionOk:Z
    .restart local v15       #permissions:[Ljava/lang/String;
    .restart local v16       #permit:Ljava/lang/String;
    .restart local v17       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 176
    .end local v16           #permit:Ljava/lang/String;
    .local v3, arr$:[Landroid/content/pm/Signature;
    .restart local v9       #i:I
    .restart local v22       #signature:Landroid/content/pm/Signature;
    .restart local v23       #signatureMatch:Z
    .restart local v24       #signatures:[Landroid/content/pm/Signature;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 183
    .end local v9           #i:I
    .end local v22           #signature:Landroid/content/pm/Signature;
    :cond_6
    if-eqz v23, :cond_0

    .line 189
    .end local v3           #arr$:[Landroid/content/pm/Signature;
    .end local v23           #signatureMatch:Z
    :cond_7
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v26, v0

    if-nez v26, :cond_8

    .line 190
    const-string/jumbo v26, "webkit"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "The plugin \'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\' has no type defined"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 194
    :cond_8
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string/jumbo v27, "type"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 195
    .local v18, pluginType:Ljava/lang/String;
    const-string v26, "native"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 196
    const-string/jumbo v26, "webkit"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unrecognized plugin type: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 201
    :cond_9
    :try_start_3
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/webkit/PluginManager;->getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 204
    .local v5, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    .line 206
    .local v4, classFound:Z
    if-nez v4, :cond_a

    .line 207
    const-string/jumbo v26, "webkit"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "The plugin\'s class\' "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\' does not extend the appropriate class."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 211
    .end local v4           #classFound:Z
    .end local v5           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v26

    move-object/from16 v8, v26

    .line 212
    .restart local v8       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string/jumbo v26, "webkit"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Can\'t find plugin: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 214
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v26

    move-object/from16 v8, v26

    .line 215
    .local v8, e:Ljava/lang/ClassNotFoundException;
    const-string/jumbo v26, "webkit"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Can\'t find plugin\'s class: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    .end local v8           #e:Ljava/lang/ClassNotFoundException;
    .restart local v4       #classFound:Z
    .restart local v5       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 223
    .end local v4           #classFound:Z
    .end local v5           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #directory:Ljava/lang/String;
    .end local v11           #i$:I
    .end local v12           #info:Landroid/content/pm/ResolveInfo;
    .end local v13           #len$:I
    .end local v14           #permissionOk:Z
    .end local v15           #permissions:[Ljava/lang/String;
    .end local v17           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v18           #pluginType:Ljava/lang/String;
    .end local v21           #serviceInfo:Landroid/content/pm/ServiceInfo;
    .end local v24           #signatures:[Landroid/content/pm/Signature;
    :cond_b
    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method getPluginSharedDataDirectory()Ljava/lang/String;
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Landroid/webkit/PluginManager;->mContext:Landroid/content/Context;

    const-string v1, "plugins"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPluginsAPKName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "pluginLib"

    .prologue
    const/4 v4, 0x0

    .line 232
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v4

    .line 246
    :goto_0
    return-object v2

    .line 237
    :cond_1
    iget-object v2, p0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    monitor-enter v2

    .line 238
    :try_start_0
    iget-object v3, p0, Landroid/webkit/PluginManager;->mPackageInfoCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 239
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    monitor-exit v2

    move-object v2, v3

    goto :goto_0

    .line 243
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_3
    monitor-exit v2

    move-object v2, v4

    .line 246
    goto :goto_0

    .line 243
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public refreshPlugins(Z)V
    .locals 3
    .parameter "reloadOpenPages"

    .prologue
    .line 105
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const/16 v1, 0x64

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/JWebCoreJavaBridge;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 108
    return-void
.end method
