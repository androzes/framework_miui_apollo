package com.android.launcher2; class WorkspaceEditingPreview$3 {/*

.class Lcom/android/launcher2/WorkspaceEditingPreview$3;
.super Ljava/lang/Object;
.source "WorkspaceEditingPreview.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/WorkspaceEditingPreview;->startSwitchingAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/WorkspaceEditingPreview;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WorkspaceEditingPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/launcher2/WorkspaceEditingPreview$3;->this$0:Lcom/android/launcher2/WorkspaceEditingPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 296
    #v1=(Null);
    iget-object v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview$3;->this$0:Lcom/android/launcher2/WorkspaceEditingPreview;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/WorkspaceEditingPreview;->mSourceView:Landroid/widget/ScreenView;

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setSlideBarVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview$3;->this$0:Lcom/android/launcher2/WorkspaceEditingPreview;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WorkspaceEditingPreview;->setSlideBarVisibility(I)V

    .line 298
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 293
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 291
    return-void
.end method

*/}
