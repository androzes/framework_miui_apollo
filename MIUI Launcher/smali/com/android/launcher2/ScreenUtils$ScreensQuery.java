package com.android.launcher2; class ScreenUtils$ScreensQuery {/*

.class interface abstract Lcom/android/launcher2/ScreenUtils$ScreensQuery;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ScreenUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ScreensQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 297
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "_id"

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    const-string v2, "screenOrder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/ScreenUtils$ScreensQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

*/}
