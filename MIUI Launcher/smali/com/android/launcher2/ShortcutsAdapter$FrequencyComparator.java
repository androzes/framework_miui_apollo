package com.android.launcher2; class ShortcutsAdapter$FrequencyComparator {/*

.class public Lcom/android/launcher2/ShortcutsAdapter$FrequencyComparator;
.super Ljava/lang/Object;
.source "ShortcutsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ShortcutsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrequencyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #v1=(Integer);
    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    #v0=(Byte);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/ShortcutsAdapter$FrequencyComparator;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

*/}
