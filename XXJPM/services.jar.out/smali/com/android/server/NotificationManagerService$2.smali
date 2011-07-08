.class Lcom/android/server/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, action:Ljava/lang/String;
    const/4 v15, 0x0

    .line 329
    .local v15, queryRestart:Z
    const-string v18, "android.intent.action.BATTERY_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 330
    const-string v18, "plugged"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x1

    move/from16 v7, v18

    .line 331
    .local v7, batteryCharging:Z
    :goto_0
    const-string v18, "level"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 332
    .local v12, level:I
    if-ltz v12, :cond_4

    const/16 v18, 0xa

    move v0, v12

    move/from16 v1, v18

    if-gt v0, v1, :cond_4

    const/16 v18, 0x1

    move/from16 v9, v18

    .line 333
    .local v9, batteryLow:Z
    :goto_1
    const-string v18, "status"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 334
    .local v16, status:I
    const/16 v18, 0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v18, 0x5a

    move v0, v12

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    :cond_0
    const/16 v18, 0x1

    move/from16 v8, v18

    .line 336
    .local v8, batteryFull:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Z

    move-result v18

    move v0, v7

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)Z

    move-result v18

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Z

    move-result v18

    move v0, v8

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 339
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v7

    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v9

    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Z)Z

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v8

    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$1302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)V

    .line 385
    .end local v7           #batteryCharging:Z
    .end local v8           #batteryFull:Z
    .end local v9           #batteryLow:Z
    .end local v12           #level:I
    .end local v16           #status:I
    :cond_2
    :goto_3
    return-void

    .line 330
    :cond_3
    const/16 v18, 0x0

    move/from16 v7, v18

    goto/16 :goto_0

    .line 332
    .restart local v7       #batteryCharging:Z
    .restart local v12       #level:I
    :cond_4
    const/16 v18, 0x0

    move/from16 v9, v18

    goto/16 :goto_1

    .line 334
    .restart local v9       #batteryLow:Z
    .restart local v16       #status:I
    :cond_5
    const/16 v18, 0x0

    move/from16 v8, v18

    goto :goto_2

    .line 344
    .end local v7           #batteryCharging:Z
    .end local v9           #batteryLow:Z
    .end local v12           #level:I
    .end local v16           #status:I
    :cond_6
    const-string v18, "android.intent.action.UMS_CONNECTED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/server/NotificationManagerService;->access$1502(Lcom/android/server/NotificationManagerService;Z)Z

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;)V

    goto :goto_3

    .line 347
    :cond_7
    const-string v18, "android.intent.action.UMS_DISCONNECTED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/server/NotificationManagerService;->access$1502(Lcom/android/server/NotificationManagerService;Z)Z

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;)V

    goto :goto_3

    .line 350
    :cond_8
    const-string v18, "android.intent.action.PACKAGE_REMOVED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "android.intent.action.PACKAGE_RESTARTED"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 354
    :cond_9
    const/4 v13, 0x0

    .line 355
    .local v13, pkgList:[Ljava/lang/String;
    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 356
    const-string v18, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 370
    :goto_4
    if-eqz v13, :cond_2

    move-object v0, v13

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_2

    .line 371
    move-object v6, v13

    .local v6, arr$:[Ljava/lang/String;
    array-length v11, v6

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_5
    if-ge v10, v11, :cond_2

    aget-object v14, v6, v10

    .line 372
    .local v14, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    if-nez v15, :cond_c

    const/16 v21, 0x1

    :goto_6
    move-object/from16 v0, v18

    move-object v1, v14

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    .line 371
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 357
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v14           #pkgName:Ljava/lang/String;
    :cond_a
    if-eqz v15, :cond_b

    .line 358
    const-string v18, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 360
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 361
    .local v17, uri:Landroid/net/Uri;
    if-eqz v17, :cond_2

    .line 364
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v14

    .line 365
    .restart local v14       #pkgName:Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 368
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    .end local v13           #pkgList:[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v14, v13, v18

    .restart local v13       #pkgList:[Ljava/lang/String;
    goto :goto_4

    .line 372
    .end local v17           #uri:Landroid/net/Uri;
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    :cond_c
    const/16 v21, 0x0

    goto :goto_6

    .line 375
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v13           #pkgList:[Ljava/lang/String;
    .end local v14           #pkgName:Ljava/lang/String;
    :cond_d
    const-string v18, "android.intent.action.SCREEN_ON"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/server/NotificationManagerService;->access$1702(Lcom/android/server/NotificationManagerService;Z)Z

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_3

    .line 378
    :cond_e
    const-string v18, "android.intent.action.SCREEN_OFF"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/server/NotificationManagerService;->access$1702(Lcom/android/server/NotificationManagerService;Z)Z

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_3

    .line 381
    :cond_f
    const-string v18, "android.intent.action.PHONE_STATE"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    const-string v19, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/NotificationManagerService;->access$1902(Lcom/android/server/NotificationManagerService;Z)Z

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_3
.end method
