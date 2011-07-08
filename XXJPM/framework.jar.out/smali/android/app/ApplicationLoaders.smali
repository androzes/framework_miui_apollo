.class Landroid/app/ApplicationLoaders;
.super Ljava/lang/Object;
.source "ApplicationLoaders.java"


# static fields
.field private static final gApplicationLoaders:Landroid/app/ApplicationLoaders;


# instance fields
.field private final mLoaders:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Landroid/app/ApplicationLoaders;

    invoke-direct {v0}, Landroid/app/ApplicationLoaders;-><init>()V

    sput-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mLoaders:Ljava/util/HashMap;

    return-void
.end method

.method public static getDefault()Landroid/app/ApplicationLoaders;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-object v0
.end method


# virtual methods
.method public getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 6
    .parameter "zip"
    .parameter "appDataDir"
    .parameter "parent"

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 41
    .local v0, baseParent:Ljava/lang/ClassLoader;
    iget-object v3, p0, Landroid/app/ApplicationLoaders;->mLoaders:Ljava/util/HashMap;

    monitor-enter v3

    .line 42
    if-nez p3, :cond_0

    .line 43
    move-object p3, v0

    .line 51
    :cond_0
    if-ne p3, v0, :cond_2

    .line 52
    :try_start_0
    iget-object v4, p0, Landroid/app/ApplicationLoaders;->mLoaders:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 53
    .local v1, loader:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_1

    .line 54
    monitor-exit v3

    move-object v3, v1

    .line 64
    .end local v1           #loader:Ljava/lang/ClassLoader;
    :goto_0
    return-object v3

    .line 57
    .restart local v1       #loader:Ljava/lang/ClassLoader;
    :cond_1
    new-instance v2, Ldalvik/system/PathClassLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v4, p3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 60
    .local v2, pathClassloader:Ldalvik/system/PathClassLoader;
    iget-object v4, p0, Landroid/app/ApplicationLoaders;->mLoaders:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    monitor-exit v3

    move-object v3, v2

    goto :goto_0

    .line 64
    .end local v1           #loader:Ljava/lang/ClassLoader;
    .end local v2           #pathClassloader:Ldalvik/system/PathClassLoader;
    :cond_2
    new-instance v4, Ldalvik/system/PathClassLoader;

    invoke-direct {v4, p1, p3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    monitor-exit v3

    move-object v3, v4

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
