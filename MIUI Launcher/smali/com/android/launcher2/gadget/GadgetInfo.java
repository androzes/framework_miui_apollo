package com.android.launcher2.gadget; class GadgetInfo {/*

.class public Lcom/android/launcher2/gadget/GadgetInfo;
.super Lcom/android/launcher2/ItemInfo;
.source "GadgetInfo.java"


# instance fields
.field public mGadgetId:I

.field public mIconId:I

.field public mTitleId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "gadgetId"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 37
    #p0=(Reference);
    const/4 v0, 0x5

    #v0=(PosByte);
    iput v0, p0, Lcom/android/launcher2/gadget/GadgetInfo;->itemType:I

    .line 38
    iput p1, p0, Lcom/android/launcher2/gadget/GadgetInfo;->mGadgetId:I

    .line 39
    return-void
.end method


# virtual methods
.method public getGadgetId()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/launcher2/gadget/GadgetInfo;->mGadgetId:I

    #v0=(Integer);
    return v0
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 48
    const-string v0, "appWidgetId"

    #v0=(Reference);
    iget v1, p0, Lcom/android/launcher2/gadget/GadgetInfo;->mGadgetId:I

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "Gadget(id="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/gadget/GadgetInfo;->mGadgetId:I

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

*/}
