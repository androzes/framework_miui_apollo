.class final Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$InnerReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerReceiver"
.end annotation


# instance fields
.field final mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field final mStrongRef:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;Z)V
    .locals 1
    .parameter "rd"
    .parameter "strong"

    .prologue
    .line 805
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 806
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    .line 807
    if-eqz p2, :cond_0

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$InnerReceiver;->mStrongRef:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    .line 808
    return-void

    .line 807
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 8
    .parameter "intent"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "ordered"
    .parameter "sticky"

    .prologue
    .line 811
    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    .line 817
    .local v0, rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 818
    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V

    .line 834
    :goto_0
    return-void

    .line 827
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 829
    .local v1, mgr:Landroid/app/IActivityManager;
    const/4 v6, 0x0

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 830
    :catch_0
    move-exception v7

    .line 831
    .local v7, e:Landroid/os/RemoteException;
    const-string v2, "ActivityThread"

    const-string v3, "Couldn\'t finish broadcast to unregistered receiver"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
