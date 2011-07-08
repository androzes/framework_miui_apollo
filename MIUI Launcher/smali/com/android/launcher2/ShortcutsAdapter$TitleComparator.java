package com.android.launcher2; class ShortcutsAdapter$TitleComparator {/*

.class public Lcom/android/launcher2/ShortcutsAdapter$TitleComparator;
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
    name = "TitleComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mComparator:Ljava/text/RuleBasedCollator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    #p0=(Reference);
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/text/RuleBasedCollator;

    iput-object v0, p0, Lcom/android/launcher2/ShortcutsAdapter$TitleComparator;->mComparator:Ljava/text/RuleBasedCollator;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/ShortcutsAdapter$TitleComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/launcher2/ShortcutsAdapter$TitleComparator;->mComparator:Ljava/text/RuleBasedCollator;

    #v1=(Reference);
    invoke-virtual {v1, p1, p2}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, r:I
    #v0=(Integer);
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    #v1=(Integer);
    return v1

    :cond_0
    #v1=(Reference);
    move v1, v0

    #v1=(Integer);
    goto :goto_0
.end method

*/}
