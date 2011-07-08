.class public interface abstract Lcom/nemustech/tiffany/widget/TFFlipImage$ITFFlipImageAdapter;
.super Ljava/lang/Object;
.source "TFFlipImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFFlipImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITFFlipImageAdapter"
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getImage(I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract registerDataSetObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.end method
