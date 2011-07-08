.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 223
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 224
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 225
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 229
    const/4 v5, 0x0

    .line 230
    .local v5, lookupUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 231
    .local v2, createUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 234
    .local v6, trigger:Z
    packed-switch p1, :pswitch_data_0

    .line 272
    .end local p2
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 273
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_1
    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v7, v5}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 278
    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v7}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 280
    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    .line 282
    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v7, v5}, Landroid/widget/QuickContactBadge;->access$200(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)V

    .line 288
    :cond_2
    :goto_1
    return-void

    .line 236
    .restart local p2
    :pswitch_0
    const/4 v6, 0x1

    .line 237
    :try_start_0
    const-string/jumbo v7, "tel"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v8, 0x0

    invoke-static {v7, p2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 240
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 241
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 242
    .local v0, contactId:J
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 244
    goto :goto_0

    .line 249
    .end local v0           #contactId:J
    .end local v4           #lookupKey:Ljava/lang/String;
    .restart local p2
    :pswitch_2
    const/4 v6, 0x1

    .line 250
    const-string v7, "mailto"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v8, 0x0

    invoke-static {v7, p2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 253
    :pswitch_3
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 254
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 255
    .restart local v0       #contactId:J
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 256
    .restart local v4       #lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 261
    .end local v0           #contactId:J
    .end local v4           #lookupKey:Ljava/lang/String;
    :cond_3
    :pswitch_4
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 262
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 263
    .restart local v0       #contactId:J
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 264
    .restart local v4       #lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 265
    const/4 v6, 0x1

    goto :goto_0

    .line 272
    .end local v0           #contactId:J
    .end local v4           #lookupKey:Ljava/lang/String;
    :catchall_0
    move-exception v7

    if-eqz p3, :cond_4

    .line 273
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_4
    throw v7

    .line 283
    :cond_5
    if-eqz v2, :cond_2

    .line 285
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v3, v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 286
    .local v3, intent:Landroid/content/Intent;
    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v7}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
