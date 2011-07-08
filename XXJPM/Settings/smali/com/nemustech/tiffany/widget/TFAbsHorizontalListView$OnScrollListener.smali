.class public interface abstract Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$OnScrollListener;
.super Ljava/lang/Object;
.source "TFAbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScrollListener"
.end annotation


# static fields
.field public static final SCROLL_STATE_FLING:I = 0x2

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_TOUCH_SCROLL:I = 0x1


# virtual methods
.method public abstract onScroll(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;III)V
.end method

.method public abstract onScrollStateChanged(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;I)V
.end method
