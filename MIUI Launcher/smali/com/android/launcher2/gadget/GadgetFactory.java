package com.android.launcher2.gadget; class GadgetFactory {/*

.class public Lcom/android/launcher2/gadget/GadgetFactory;
.super Ljava/lang/Object;
.source "GadgetFactory.java"


# static fields
.field public static final GADGET_ID_LIST:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x3

    #v0=(PosByte);
    new-array v0, v0, [I

    #v0=(Reference);
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/gadget/GadgetFactory;->GADGET_ID_LIST:[I

    return-void

    #v0=(Unknown);
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static createGadget(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/gadget/GadgetInfo;)Lcom/android/launcher2/gadget/Gadget;
    .locals 2
    .parameter "launcher"
    .parameter "info"

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, gadget:Landroid/view/View;
    #v0=(Null);
    invoke-virtual {p1}, Lcom/android/launcher2/gadget/GadgetInfo;->getGadgetId()I

    move-result v1

    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    .line 67
    :goto_0
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 71
    :cond_0
    check-cast v0, Lcom/android/launcher2/gadget/Gadget;

    .end local v0           #gadget:Landroid/view/View;
    return-object v0

    .line 57
    .restart local v0       #gadget:Landroid/view/View;
    :pswitch_0
    #v0=(Null);
    new-instance v0, Lcom/android/launcher2/gadget/FrequentContacts;

    .end local v0           #gadget:Landroid/view/View;
    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/gadget/FrequentContacts;-><init>(Landroid/content/Context;)V

    .line 58
    .restart local v0       #gadget:Landroid/view/View;
    #v0=(Reference);
    goto :goto_0

    .line 60
    :pswitch_1
    #v0=(Null);
    new-instance v0, Lcom/android/launcher2/gadget/Player;

    .end local v0           #gadget:Landroid/view/View;
    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/gadget/Player;-><init>(Landroid/content/Context;)V

    .line 61
    .restart local v0       #gadget:Landroid/view/View;
    #v0=(Reference);
    goto :goto_0

    .line 63
    :pswitch_2
    #v0=(Null);
    new-instance v0, Lcom/android/launcher2/gadget/GlobalSearch;

    .end local v0           #gadget:Landroid/view/View;
    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/gadget/GlobalSearch;-><init>(Landroid/content/Context;)V

    .restart local v0       #gadget:Landroid/view/View;
    #v0=(Reference);
    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final getGadgetIdList()[I
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/launcher2/gadget/GadgetFactory;->GADGET_ID_LIST:[I

    #v0=(Reference);
    return-object v0
.end method

.method public static getInfo(I)Lcom/android/launcher2/gadget/GadgetInfo;
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x4

    .line 24
    #v1=(PosByte);
    new-instance v0, Lcom/android/launcher2/gadget/GadgetInfo;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/gadget/GadgetInfo;-><init>(I)V

    .line 26
    .local v0, result:Lcom/android/launcher2/gadget/GadgetInfo;
    #v0=(Reference);
    packed-switch p0, :pswitch_data_0

    .line 46
    const/4 v0, 0x0

    .line 49
    :goto_0
    #v1=(Integer);
    return-object v0

    .line 28
    :pswitch_0
    #v1=(PosByte);
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    .line 29
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    .line 30
    const v1, 0x7f0c003e

    #v1=(Integer);
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mTitleId:I

    .line 31
    const v1, 0x7f020020

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 34
    :pswitch_1
    #v1=(PosByte);
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    .line 35
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    .line 36
    const v1, 0x7f0c005f

    #v1=(Integer);
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mTitleId:I

    .line 37
    const v1, 0x7f020030

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 40
    :pswitch_2
    #v1=(PosByte);
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    .line 41
    const/4 v1, 0x1

    #v1=(One);
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    .line 42
    const v1, 0x7f0c0066

    #v1=(Integer);
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mTitleId:I

    .line 43
    const v1, 0x7f020037

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 26
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

*/}
