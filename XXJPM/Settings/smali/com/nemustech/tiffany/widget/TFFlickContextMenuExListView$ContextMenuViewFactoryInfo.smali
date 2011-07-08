.class public Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;
.super Ljava/lang/Object;
.source "TFFlickContextMenuExListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextMenuViewFactoryInfo"
.end annotation


# instance fields
.field public childIdForLocationHint:I

.field public contextMenuView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;-><init>(Landroid/view/View;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "contextMenuView"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;-><init>(Landroid/view/View;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .parameter "contextMenuView"
    .parameter "childIdForLocationHint"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;->contextMenuView:Landroid/view/View;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;->childIdForLocationHint:I

    .line 71
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;->contextMenuView:Landroid/view/View;

    .line 72
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;->childIdForLocationHint:I

    .line 73
    return-void
.end method
