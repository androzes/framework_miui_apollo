.class Lcom/android/server/WindowManagerService$AppWindowToken;
.super Lcom/android/server/WindowManagerService$WindowToken;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppWindowToken"
.end annotation


# instance fields
.field final allAppWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field allDrawn:Z

.field animLayerAdjustment:I

.field animating:Z

.field animation:Landroid/view/animation/Animation;

.field appFullscreen:Z

.field final appToken:Landroid/view/IApplicationToken;

.field clientHidden:Z

.field firstWindowDrawn:Z

.field freezingScreen:Z

.field groupId:I

.field hasTransformation:Z

.field hiddenRequested:Z

.field inPendingTransaction:Z

.field lastTransactionSequence:I

.field numDrawnWindows:I

.field numInterestingWindows:I

.field removed:Z

.field reportedVisible:Z

.field requestedOrientation:I

.field startingData:Lcom/android/server/WindowManagerService$StartingData;

.field startingDisplayed:Z

.field startingMoved:Z

.field startingView:Landroid/view/View;

.field startingWindow:Lcom/android/server/WindowManagerService$WindowState;

.field final synthetic this$0:Lcom/android/server/WindowManagerService;

.field final transformation:Landroid/view/animation/Transformation;

.field willBeHidden:Z


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;Landroid/view/IApplicationToken;)V
    .locals 4
    .parameter
    .parameter "_token"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 8699
    iput-object p1, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    .line 8700
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/server/WindowManagerService$WindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 8645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    .line 8647
    iput v2, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 8649
    iput v2, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 8654
    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget v0, v0, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->lastTransactionSequence:I

    .line 8685
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->transformation:Landroid/view/animation/Transformation;

    .line 8702
    iput-object p0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8703
    iput-object p2, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    .line 8704
    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 1

    .prologue
    .line 8736
    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 8737
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 8738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 8740
    :cond_0
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 8939
    invoke-super {p0, p1, p2}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8940
    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_0

    .line 8941
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8943
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 8944
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allAppWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8946
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "groupId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8947
    const-string v0, " appFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8948
    const-string v0, " requestedOrientation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8949
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hiddenRequested="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8950
    const-string v0, " clientHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8951
    const-string v0, " willBeHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8952
    const-string v0, " reportedVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->reportedVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8953
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->paused:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-eqz v0, :cond_3

    .line 8954
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "paused="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->paused:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8955
    const-string v0, " freezingScreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8957
    :cond_3
    iget v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-eqz v0, :cond_5

    .line 8959
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "numInterestingWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8960
    iget v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8961
    const-string v0, " numDrawnWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8962
    const-string v0, " inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8963
    const-string v0, " allDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8965
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_7

    .line 8966
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "animating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8967
    const-string v0, " animation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8969
    :cond_7
    iget v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    if-eqz v0, :cond_8

    .line 8970
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "animLayerAdjustment="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8972
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->hasTransformation:Z

    if-eqz v0, :cond_9

    .line 8973
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasTransformation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->hasTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8974
    const-string v0, " transformation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    .line 8975
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 8977
    :cond_9
    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    if-eqz v0, :cond_b

    .line 8978
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "startingData="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 8979
    const-string v0, " removed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8980
    const-string v0, " firstWindowDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8982
    :cond_b
    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    if-eqz v0, :cond_d

    .line 8984
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "startingWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 8985
    const-string v0, " startingView="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 8986
    const-string v0, " startingDisplayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8987
    const-string v0, " startingMoved"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8989
    :cond_d
    return-void
.end method

.method findMainWindow()Lcom/android/server/WindowManagerService$WindowState;
    .locals 4

    .prologue
    .line 8926
    iget-object v2, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8927
    .local v0, j:I
    :cond_0
    if-lez v0, :cond_2

    .line 8928
    add-int/lit8 v0, v0, -0x1

    .line 8929
    iget-object v2, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 8930
    .local v1, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v2, v1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, v1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :cond_1
    move-object v2, v1

    .line 8935
    .end local v1           #win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method sendAppVisibilityToClients()V
    .locals 5

    .prologue
    .line 8760
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8761
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 8762
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 8763
    .local v2, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v2, v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eqz v3, :cond_0

    .line 8761
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8770
    :cond_0
    :try_start_0
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    iget-boolean v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_2
    invoke-interface {v3, v4}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8771
    :catch_0
    move-exception v3

    goto :goto_1

    .line 8770
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 8774
    .end local v2           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "anim"

    .prologue
    .line 8709
    iput-object p1, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 8710
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 8711
    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 8712
    iget-object v2, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget v2, v2, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 8713
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v1

    .line 8714
    .local v1, zorder:I
    const/4 v0, 0x0

    .line 8715
    .local v0, adj:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 8716
    const/16 v0, 0x3e8

    .line 8721
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    if-eq v2, v0, :cond_1

    .line 8722
    iput v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    .line 8723
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateLayers()V

    .line 8725
    :cond_1
    return-void

    .line 8717
    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 8718
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public setDummyAnimation()V
    .locals 1

    .prologue
    .line 8728
    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 8731
    sget-object v0, Lcom/android/server/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 8733
    :cond_0
    return-void
.end method

.method showAllWindowsLocked()V
    .locals 4

    .prologue
    .line 8777
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8778
    .local v0, NW:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8779
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 8782
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$WindowState;->performShowLocked()Z

    .line 8778
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8784
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_0
    return-void
.end method

.method stepAnimationLocked(JII)Z
    .locals 8
    .parameter "currentTime"
    .parameter "dw"
    .parameter "dh"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8788
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 8791
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    sget-object v4, Lcom/android/server/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v3, v4, :cond_0

    move v3, v5

    .line 8861
    :goto_0
    return v3

    .line 8799
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    if-eqz v3, :cond_4

    :cond_1
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_4

    .line 8800
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    if-nez v3, :cond_2

    .line 8806
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3, p3, p4, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 8807
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 8808
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 8810
    :cond_2
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 8811
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v2

    .line 8816
    .local v2, more:Z
    if-eqz v2, :cond_3

    .line 8818
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->hasTransformation:Z

    move v3, v6

    .line 8819
    goto :goto_0

    .line 8824
    :cond_3
    iput-object v7, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 8833
    .end local v2           #more:Z
    :cond_4
    :goto_1
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->hasTransformation:Z

    .line 8835
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    if-nez v3, :cond_6

    move v3, v5

    .line 8836
    goto :goto_0

    .line 8826
    :cond_5
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_4

    .line 8829
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 8830
    iput-object v7, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 8839
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$AppWindowToken;->clearAnimation()V

    .line 8840
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 8841
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v3, p0, :cond_7

    .line 8842
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v3, v6}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 8849
    :cond_7
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 8850
    iget v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    if-eqz v3, :cond_8

    .line 8851
    iput v5, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    .line 8852
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateLayers()V

    .line 8855
    :cond_8
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8856
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_9

    .line 8857
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$WindowState;->finishExit()V

    .line 8856
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8859
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    move v3, v5

    .line 8861
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8993
    iget-object v1, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->stringName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8995
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "AppWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8996
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8997
    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8998
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->stringName:Ljava/lang/String;

    .line 9000
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method updateLayers()V
    .locals 5

    .prologue
    .line 8743
    iget-object v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8744
    .local v0, N:I
    iget v1, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    .line 8745
    .local v1, adj:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8746
    iget-object v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 8747
    .local v3, w:Lcom/android/server/WindowManagerService$WindowState;
    iget v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 8750
    iget-object v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, v4, :cond_0

    .line 8751
    iget-object v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 8753
    :cond_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-nez v4, :cond_1

    .line 8754
    iget-object v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/WindowManagerService;->setWallpaperAnimLayerAdjustmentLocked(I)V

    .line 8745
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8757
    .end local v3           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    return-void
.end method

.method updateReportedVisibilityLocked()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 8865
    iget-object v8, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v8, :cond_1

    .line 8923
    :cond_0
    :goto_0
    return-void

    .line 8869
    :cond_1
    const/4 v5, 0x0

    .line 8870
    .local v5, numInteresting:I
    const/4 v6, 0x0

    .line 8871
    .local v6, numVisible:I
    const/4 v3, 0x1

    .line 8874
    .local v3, nowGone:Z
    iget-object v8, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8875
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 8876
    iget-object v8, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowState;

    .line 8877
    .local v7, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v8, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-eq v7, v8, :cond_2

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    if-nez v8, :cond_2

    iget v8, v7, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-eqz v8, :cond_3

    .line 8875
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8897
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 8898
    invoke-virtual {v7}, Lcom/android/server/WindowManagerService$WindowState;->isDrawnLw()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 8899
    invoke-virtual {v7}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v8

    if-nez v8, :cond_4

    .line 8900
    add-int/lit8 v6, v6, 0x1

    .line 8902
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 8903
    :cond_5
    invoke-virtual {v7}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 8904
    const/4 v3, 0x0

    goto :goto_2

    .line 8908
    .end local v7           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6
    if-lez v5, :cond_8

    if-lt v6, v5, :cond_8

    move v4, v12

    .line 8911
    .local v4, nowVisible:Z
    :goto_3
    iget-boolean v8, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->reportedVisible:Z

    if-eq v4, v8, :cond_0

    .line 8915
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->reportedVisible:Z

    .line 8916
    iget-object v8, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v9, 0x8

    if-eqz v4, :cond_9

    move v10, v12

    :goto_4
    if-eqz v3, :cond_7

    move v11, v12

    :cond_7
    invoke-virtual {v8, v9, v10, v11, p0}, Lcom/android/server/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 8921
    .local v2, m:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v8, v2}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v2           #m:Landroid/os/Message;
    .end local v4           #nowVisible:Z
    :cond_8
    move v4, v11

    .line 8908
    goto :goto_3

    .restart local v4       #nowVisible:Z
    :cond_9
    move v10, v11

    .line 8916
    goto :goto_4
.end method
