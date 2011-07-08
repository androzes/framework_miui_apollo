package com.android.launcher2; class ErrorBar {/*

.class public Lcom/android/launcher2/ErrorBar;
.super Landroid/widget/TextView;
.source "ErrorBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ErrorBar$CloseErrorBar;
    }
.end annotation


# instance fields
.field private mErrorBarCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/ErrorBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget v0, p0, Lcom/android/launcher2/ErrorBar;->mErrorBarCount:I

    #v0=(Integer);
    return v0
.end method

.method private showErrorOrWarning(IZ)V
    .locals 3
    .parameter "resId"
    .parameter "isWaring"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ErrorBar;->setText(I)V

    .line 27
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ErrorBar;->setVisibility(I)V

    .line 28
    iget v0, p0, Lcom/android/launcher2/ErrorBar;->mErrorBarCount:I

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher2/ErrorBar;->mErrorBarCount:I

    .line 29
    new-instance v0, Lcom/android/launcher2/ErrorBar$CloseErrorBar;

    #v0=(UninitRef);
    iget v1, p0, Lcom/android/launcher2/ErrorBar;->mErrorBarCount:I

    #v1=(Integer);
    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/ErrorBar$CloseErrorBar;-><init>(Lcom/android/launcher2/ErrorBar;I)V

    #v0=(Reference);
    const-wide/16 v1, 0x5dc

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/ErrorBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    return-void
.end method


# virtual methods
.method hideError()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x8

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ErrorBar;->setVisibility(I)V

    .line 34
    return-void
.end method

.method public setMargins(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/launcher2/ErrorBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ErrorBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    return-void
.end method

.method showError(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 22
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/ErrorBar;->showErrorOrWarning(IZ)V

    .line 23
    return-void
.end method

*/}
