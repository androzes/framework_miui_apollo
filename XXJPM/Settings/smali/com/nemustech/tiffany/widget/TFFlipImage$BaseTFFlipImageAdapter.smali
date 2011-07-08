.class public abstract Lcom/nemustech/tiffany/widget/TFFlipImage$BaseTFFlipImageAdapter;
.super Ljava/lang/Object;
.source "TFFlipImage.java"

# interfaces
.implements Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFFlipImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseTFFlipImageAdapter"
.end annotation


# instance fields
.field private final mDataSetObservable:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$BaseTFFlipImageAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$BaseTFFlipImageAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 768
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$BaseTFFlipImageAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 772
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$BaseTFFlipImageAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 756
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$BaseTFFlipImageAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 760
    return-void
.end method
