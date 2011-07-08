.class Lcom/android/settings/RunningServices$ProcessItem;
.super Lcom/android/settings/RunningServices$BaseItem;
.source "RunningServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RunningServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessItem"
.end annotation


# instance fields
.field mActiveSince:J

.field mClient:Lcom/android/settings/RunningServices$ProcessItem;

.field final mDependentProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/RunningServices$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mIsStarted:Z

.field mIsSystem:Z

.field mLastNumDependentProcesses:I

.field mPid:I

.field final mProcessName:Ljava/lang/String;

.field mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field mRunningSeq:I

.field final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/RunningServices$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "uid"
    .parameter "processName"

    .prologue
    const/4 v2, 0x1

    .line 200
    invoke-direct {p0, v2}, Lcom/android/settings/RunningServices$BaseItem;-><init>(Z)V

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RunningServices$ProcessItem;->mServices:Ljava/util/HashMap;

    .line 181
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0902c9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDescription:Ljava/lang/String;

    .line 203
    iput p2, p0, Lcom/android/settings/RunningServices$ProcessItem;->mUid:I

    .line 204
    iput-object p3, p0, Lcom/android/settings/RunningServices$ProcessItem;->mProcessName:Ljava/lang/String;

    .line 205
    return-void
.end method


# virtual methods
.method addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/RunningServices$BaseItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/RunningServices$ProcessItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, dest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/RunningServices$BaseItem;>;"
    .local p2, destProc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/RunningServices$ProcessItem;>;"
    iget-object v3, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 381
    .local v0, NP:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 382
    iget-object v3, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/RunningServices$ProcessItem;

    .line 383
    .local v2, proc:Lcom/android/settings/RunningServices$ProcessItem;
    invoke-virtual {v2, p1, p2}, Lcom/android/settings/RunningServices$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 384
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget v3, v2, Lcom/android/settings/RunningServices$ProcessItem;->mPid:I

    if-lez v3, :cond_0

    .line 386
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v2           #proc:Lcom/android/settings/RunningServices$ProcessItem;
    :cond_1
    return-void
.end method

.method buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z
    .locals 6
    .parameter "context"
    .parameter "pm"
    .parameter "curSeq"

    .prologue
    .line 357
    iget-object v4, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 358
    .local v0, NP:I
    const/4 v1, 0x0

    .line 359
    .local v1, changed:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 360
    iget-object v4, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/RunningServices$ProcessItem;

    .line 361
    .local v3, proc:Lcom/android/settings/RunningServices$ProcessItem;
    iget-object v4, v3, Lcom/android/settings/RunningServices$ProcessItem;->mClient:Lcom/android/settings/RunningServices$ProcessItem;

    if-eq v4, p0, :cond_0

    .line 362
    const/4 v1, 0x1

    .line 363
    iput-object p0, v3, Lcom/android/settings/RunningServices$ProcessItem;->mClient:Lcom/android/settings/RunningServices$ProcessItem;

    .line 365
    :cond_0
    iput p3, v3, Lcom/android/settings/RunningServices$ProcessItem;->mCurSeq:I

    .line 366
    invoke-virtual {v3, p2}, Lcom/android/settings/RunningServices$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 367
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/settings/RunningServices$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v3           #proc:Lcom/android/settings/RunningServices$ProcessItem;
    :cond_1
    iget v4, p0, Lcom/android/settings/RunningServices$ProcessItem;->mLastNumDependentProcesses:I

    iget-object v5, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 371
    const/4 v1, 0x1

    .line 372
    iget-object v4, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/RunningServices$ProcessItem;->mLastNumDependentProcesses:I

    .line 375
    :cond_2
    return v1
.end method

.method ensureLabel(Landroid/content/pm/PackageManager;)V
    .locals 10
    .parameter "pm"

    .prologue
    .line 208
    iget-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mLabel:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 277
    :goto_0
    return-void

    .line 213
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mProcessName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 214
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, p0, Lcom/android/settings/RunningServices$ProcessItem;->mUid:I

    if-ne v8, v9, :cond_1

    .line 215
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 216
    iget-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mLabel:Ljava/lang/String;

    .line 217
    iput-object v0, p0, Lcom/android/settings/RunningServices$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v8

    .line 225
    :cond_1
    iget v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mUid:I

    invoke-virtual {p1, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, pkgs:[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 230
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v7, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 231
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 232
    iget-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mLabel:Ljava/lang/String;

    .line 233
    iput-object v0, p0, Lcom/android/settings/RunningServices$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 235
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v8

    .line 241
    :cond_2
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    .line 243
    .local v4, name:Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {p1, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 244
    .local v6, pi:Landroid/content/pm/PackageInfo;
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v8, :cond_3

    .line 245
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v4, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 247
    .local v5, nm:Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    .line 248
    iput-object v5, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 249
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mLabel:Ljava/lang/String;

    .line 250
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 254
    .end local v5           #nm:Ljava/lang/CharSequence;
    .end local v6           #pi:Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v8

    .line 241
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 260
    .end local v4           #name:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 261
    iget-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/RunningServices$ServiceItem;

    iget-object v8, v8, Lcom/android/settings/RunningServices$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 263
    iget-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 264
    iget-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 270
    :cond_5
    const/4 v8, 0x0

    :try_start_3
    aget-object v8, v7, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 271
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 272
    iget-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/RunningServices$ProcessItem;->mLabel:Ljava/lang/String;

    .line 273
    iput-object v0, p0, Lcom/android/settings/RunningServices$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 275
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v8

    goto/16 :goto_0
.end method

.method updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .locals 13
    .parameter "context"
    .parameter "service"

    .prologue
    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 283
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 284
    .local v2, changed:Z
    iget-object v9, p0, Lcom/android/settings/RunningServices$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v10, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/RunningServices$ServiceItem;

    .line 285
    .local v7, si:Lcom/android/settings/RunningServices$ServiceItem;
    if-nez v7, :cond_1

    .line 286
    const/4 v2, 0x1

    .line 287
    new-instance v7, Lcom/android/settings/RunningServices$ServiceItem;

    .end local v7           #si:Lcom/android/settings/RunningServices$ServiceItem;
    invoke-direct {v7}, Lcom/android/settings/RunningServices$ServiceItem;-><init>()V

    .line 288
    .restart local v7       #si:Lcom/android/settings/RunningServices$ServiceItem;
    iput-object p2, v7, Lcom/android/settings/RunningServices$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 290
    :try_start_0
    iget-object v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    :goto_0
    iget-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v9, :cond_4

    iget-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v9, v9, Landroid/content/pm/ServiceInfo;->labelRes:I

    if-nez v9, :cond_0

    iget-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v9, :cond_4

    .line 295
    :cond_0
    iget-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v9, v6}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 296
    iget-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mLabel:Ljava/lang/String;

    .line 305
    :goto_1
    iget-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 306
    iget-object v9, p0, Lcom/android/settings/RunningServices$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v10, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_1
    iget v9, p0, Lcom/android/settings/RunningServices$ProcessItem;->mCurSeq:I

    iput v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mCurSeq:I

    .line 309
    iput-object p2, v7, Lcom/android/settings/RunningServices$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 310
    iget-wide v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_6

    iget-wide v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide v0, v9

    .line 311
    .local v0, activeSince:J
    :goto_2
    iget-wide v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mActiveSince:J

    cmp-long v9, v9, v0

    if-eqz v9, :cond_2

    .line 312
    iput-wide v0, v7, Lcom/android/settings/RunningServices$ServiceItem;->mActiveSince:J

    .line 313
    const/4 v2, 0x1

    .line 315
    :cond_2
    iget-object v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-eqz v9, :cond_7

    iget v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v9, :cond_7

    .line 316
    iget-boolean v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mShownAsStarted:Z

    if-eqz v9, :cond_3

    .line 317
    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mShownAsStarted:Z

    .line 318
    const/4 v2, 0x1

    .line 321
    :cond_3
    :try_start_1
    iget-object v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 322
    .local v3, clientr:Landroid/content/res/Resources;
    iget v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, label:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0902c6

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mDescription:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 337
    .end local v3           #clientr:Landroid/content/res/Resources;
    .end local v5           #label:Ljava/lang/String;
    :goto_3
    return v2

    .line 298
    .end local v0           #activeSince:J
    :cond_4
    iget-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mLabel:Ljava/lang/String;

    .line 299
    iget-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mLabel:Ljava/lang/String;

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 300
    .local v8, tail:I
    if-ltz v8, :cond_5

    .line 301
    iget-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mLabel:Ljava/lang/String;

    add-int/lit8 v10, v8, 0x1

    iget-object v11, v7, Lcom/android/settings/RunningServices$ServiceItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mLabel:Ljava/lang/String;

    .line 303
    :cond_5
    iget-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mLabel:Ljava/lang/String;

    iput-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mDisplayLabel:Ljava/lang/CharSequence;

    goto :goto_1

    .line 310
    .end local v8           #tail:I
    :cond_6
    const-wide/16 v9, -0x1

    move-wide v0, v9

    goto :goto_2

    .line 325
    .restart local v0       #activeSince:J
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 326
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mDescription:Ljava/lang/String;

    goto :goto_3

    .line 329
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    iget-boolean v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mShownAsStarted:Z

    if-nez v9, :cond_8

    .line 330
    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mShownAsStarted:Z

    .line 331
    const/4 v2, 0x1

    .line 333
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0902c5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settings/RunningServices$ServiceItem;->mDescription:Ljava/lang/String;

    goto :goto_3

    .line 291
    .end local v0           #activeSince:J
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method

.method updateSize(Landroid/content/Context;Landroid/os/Debug$MemoryInfo;I)Z
    .locals 6
    .parameter "context"
    .parameter "mem"
    .parameter "curSeq"

    .prologue
    const/4 v5, 0x0

    .line 341
    invoke-virtual {p2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/RunningServices$ProcessItem;->mSize:J

    .line 342
    iget v1, p0, Lcom/android/settings/RunningServices$ProcessItem;->mCurSeq:I

    if-ne v1, p3, :cond_0

    .line 343
    iget-wide v1, p0, Lcom/android/settings/RunningServices$ProcessItem;->mSize:J

    invoke-static {p1, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, sizeStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/RunningServices$ProcessItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    iput-object v0, p0, Lcom/android/settings/RunningServices$ProcessItem;->mSizeStr:Ljava/lang/String;

    move v1, v5

    .line 353
    .end local v0           #sizeStr:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    move v1, v5

    goto :goto_0
.end method
