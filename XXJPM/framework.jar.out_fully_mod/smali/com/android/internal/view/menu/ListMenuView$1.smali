.class Lcom/android/internal/view/menu/ListMenuView$1;
.super Ljava/lang/Object;
.source "ListMenuView.java"

# interfaces
.implements Landroid/widget/ScrollView$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ListMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ListMenuView;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/ListMenuView;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuView$1;->this$0:Lcom/android/internal/view/menu/ListMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuView$1;->this$0:Lcom/android/internal/view/menu/ListMenuView;

    invoke-static {v0, p2}, Lcom/android/internal/view/menu/ListMenuView;->access$000(Lcom/android/internal/view/menu/ListMenuView;I)V

    .line 115
    return-void
.end method
