package com.android.launcher2; class LauncherModel$Loader {/*

.class public Lcom/android/launcher2/LauncherModel$Loader;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Loader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;
    }
.end annotation


# instance fields
.field final mAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/gadget/GadgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field final mLoadedApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherModel;)V
    .locals 1
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    #p0=(Reference);
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mGadgets:Ljava/util/ArrayList;

    .line 541
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    .line 542
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedApps:Ljava/util/HashMap;

    .line 548
    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/LauncherModel$Loader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$802(Lcom/android/launcher2/LauncherModel$Loader;Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    return-object p1
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .prologue
    const-string v2, "Launcher.Model"

    .line 1213
    #v2=(Reference);
    const-string v0, "Launcher.Model"

    #v0=(Reference);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "mLoader.mItems size="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$Loader;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->dumpState()V

    .line 1219
    :goto_0
    return-void

    .line 1217
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v0, "mLoader.mLoaderThread=null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    const-string v1, "Launcher.Model"

    .line 551
    #v1=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$000(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 552
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x2

    #v3=(PosByte);
    if-lt v2, v3, :cond_0

    .line 554
    const-string v2, "Launcher.Model"

    #v2=(Reference);
    const-string v3, "already has a waitting thread,return."

    #v3=(Reference);
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    monitor-exit v1

    .line 576
    :goto_0
    #v0=(Conflicted);v4=(Conflicted);
    return-void

    .line 559
    :cond_0
    #v0=(Uninit);v2=(Integer);v3=(PosByte);v4=(Uninit);
    const-string v2, "Launcher.Model"

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "startLoader isLaunching="

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$100(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$100(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 564
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    .line 565
    .local v0, oldThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;
    #v0=(Reference);
    if-eqz v0, :cond_2

    .line 566
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->isLaunching()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 568
    const/4 p2, 0x1

    .line 570
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->stopLocked()V

    .line 572
    :cond_2
    #v2=(Conflicted);
    new-instance v2, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    #v2=(UninitRef);
    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;-><init>(Lcom/android/launcher2/LauncherModel$Loader;Landroid/content/Context;Ljava/lang/Thread;Z)V

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    .line 573
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->start()V

    .line 575
    .end local v0           #oldThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;
    :cond_3
    #v0=(Conflicted);
    monitor-exit v1

    goto :goto_0

    :catchall_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$000(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->stopLocked()V

    .line 583
    :cond_0
    monitor-exit v0

    .line 584
    return-void

    .line 583
    :catchall_0
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference);
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

*/}
