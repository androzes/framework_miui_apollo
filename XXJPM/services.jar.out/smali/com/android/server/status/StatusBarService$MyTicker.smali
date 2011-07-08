.class Lcom/android/server/status/StatusBarService$MyTicker;
.super Lcom/android/server/status/Ticker;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;Landroid/content/Context;Lcom/android/server/status/StatusBarView;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "sb"

    .prologue
    .line 2673
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    .line 2674
    invoke-direct {p0, p2, p3}, Lcom/android/server/status/Ticker;-><init>(Landroid/content/Context;Lcom/android/server/status/StatusBarView;)V

    .line 2675
    return-void
.end method


# virtual methods
.method tickerDone()V
    .locals 5

    .prologue
    const v4, 0x10a0022

    .line 2691
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2692
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$1200(Lcom/android/server/status/StatusBarService;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2693
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Lcom/android/server/status/StatusBarService;->access$1300(Lcom/android/server/status/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2694
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$1200(Lcom/android/server/status/StatusBarService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    const v2, 0x10a0023

    iget-object v3, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v1, v2, v3}, Lcom/android/server/status/StatusBarService;->access$1300(Lcom/android/server/status/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2696
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v0, v0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    .line 2697
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/status/StatusBarService;->setDateViewVisibility(ZI)V

    .line 2699
    :cond_0
    return-void
.end method

.method tickerHalting()V
    .locals 5

    .prologue
    const/high16 v4, 0x10a

    .line 2702
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2703
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$1200(Lcom/android/server/status/StatusBarService;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2704
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Lcom/android/server/status/StatusBarService;->access$1300(Lcom/android/server/status/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2705
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$1200(Lcom/android/server/status/StatusBarService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    const v2, 0x10a0001

    iget-object v3, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v1, v2, v3}, Lcom/android/server/status/StatusBarService;->access$1300(Lcom/android/server/status/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2707
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v0, v0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    .line 2708
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/status/StatusBarService;->setDateViewVisibility(ZI)V

    .line 2710
    :cond_0
    return-void
.end method

.method tickerStarting()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x10a0025

    const/4 v3, 0x0

    .line 2679
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$1102(Lcom/android/server/status/StatusBarService;Z)Z

    .line 2680
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2681
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$1200(Lcom/android/server/status/StatusBarService;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2682
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$1200(Lcom/android/server/status/StatusBarService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    const v2, 0x10a0024

    invoke-static {v1, v2, v5}, Lcom/android/server/status/StatusBarService;->access$1300(Lcom/android/server/status/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2683
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1, v4, v5}, Lcom/android/server/status/StatusBarService;->access$1300(Lcom/android/server/status/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2684
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v0, v0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    .line 2685
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/status/StatusBarService;->setDateViewVisibility(ZI)V

    .line 2687
    :cond_0
    return-void
.end method
