.class Lcom/nemustech/tiffany/widget/TFFlipImage$5;
.super Landroid/database/DataSetObserver;
.source "TFFlipImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFFlipImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFFlipImage;)V
    .locals 0
    .parameter

    .prologue
    .line 802
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$5;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$5;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->access$700(Lcom/nemustech/tiffany/widget/TFFlipImage;)V

    .line 800
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$5;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->access$800(Lcom/nemustech/tiffany/widget/TFFlipImage;)V

    .line 804
    return-void
.end method
