.class public Lcom/nemustech/tiffany/widget/TFFlipImage$ArrayTFFlipImageAdapter;
.super Lcom/nemustech/tiffany/widget/TFFlipImage$BaseTFFlipImageAdapter;
.source "TFFlipImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFFlipImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayTFFlipImageAdapter"
.end annotation


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 784
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage$BaseTFFlipImageAdapter;-><init>()V

    .line 785
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$ArrayTFFlipImageAdapter;->mData:Ljava/util/ArrayList;

    .line 786
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$ArrayTFFlipImageAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImage(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "position"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$ArrayTFFlipImageAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
