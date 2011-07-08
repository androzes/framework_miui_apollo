.class public final Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;
.super Ljava/lang/Object;
.source "ContextImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl$SharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorImpl"
.end annotation


# instance fields
.field private mClear:Z

.field private final mModified:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;


# direct methods
.method public constructor <init>(Landroid/app/ContextImpl$SharedPreferencesImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 2927
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2928
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    .line 2929
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mClear:Z

    return-void
.end method


# virtual methods
.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 2970
    monitor-enter p0

    .line 2971
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 2972
    monitor-exit p0

    return-object p0

    .line 2973
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commit()Z
    .locals 15

    .prologue
    .line 2980
    const/4 v6, 0x0

    .line 2981
    .local v6, keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 2983
    .local v9, listeners:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    iget-object v13, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    monitor-enter v13

    .line 2984
    :try_start_0
    iget-object v14, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v14}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$100(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/WeakHashMap;->size()I

    move-result v14

    if-lez v14, :cond_3

    const/4 v14, 0x1

    move v1, v14

    .line 2985
    .local v1, hasListeners:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 2986
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2987
    .end local v6           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v7, keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    new-instance v10, Ljava/util/HashSet;

    iget-object v14, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v14}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$100(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .end local v9           #listeners:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    .local v10, listeners:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    move-object v9, v10

    .end local v10           #listeners:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    .restart local v9       #listeners:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    move-object v6, v7

    .line 2991
    .end local v7           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2992
    :try_start_3
    iget-boolean v14, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mClear:Z

    if-eqz v14, :cond_1

    .line 2993
    iget-object v14, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v14}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$200(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->clear()V

    .line 2994
    const/4 v14, 0x0

    iput-boolean v14, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 2997
    :cond_1
    iget-object v14, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2998
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2999
    .local v4, k:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 3000
    .local v12, v:Ljava/lang/Object;
    if-ne v12, p0, :cond_4

    .line 3001
    iget-object v14, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v14}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$200(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3006
    :goto_2
    if-eqz v1, :cond_2

    .line 3007
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3012
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #k:Ljava/lang/String;
    .end local v12           #v:Ljava/lang/Object;
    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v14

    .line 3015
    .end local v1           #hasListeners:Z
    :catchall_1
    move-exception v14

    :goto_3
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v14

    .line 2984
    :cond_3
    const/4 v14, 0x0

    move v1, v14

    goto :goto_0

    .line 3003
    .restart local v0       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1       #hasListeners:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #k:Ljava/lang/String;
    .restart local v12       #v:Ljava/lang/Object;
    :cond_4
    :try_start_5
    iget-object v14, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v14}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$200(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3011
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #k:Ljava/lang/String;
    .end local v12           #v:Ljava/lang/Object;
    :cond_5
    iget-object v14, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->clear()V

    .line 3012
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3014
    :try_start_6
    iget-object v14, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v14}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$300(Landroid/app/ContextImpl$SharedPreferencesImpl;)Z

    move-result v11

    .line 3015
    .local v11, returnValue:Z
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3017
    if-eqz v1, :cond_8

    .line 3018
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int v2, v13, v14

    .local v2, i:I
    :goto_4
    if-ltz v2, :cond_8

    .line 3019
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3020
    .local v5, key:Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 3021
    .local v8, listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    if-eqz v8, :cond_6

    .line 3022
    iget-object v13, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-interface {v8, v13, v5}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_5

    .line 3018
    .end local v8           #listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 3028
    .end local v2           #i:I
    .end local v5           #key:Ljava/lang/String;
    :cond_8
    return v11

    .line 3015
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #returnValue:Z
    .restart local v7       #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v14

    move-object v6, v7

    .end local v7           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2956
    monitor-enter p0

    .line 2957
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2958
    monitor-exit p0

    return-object p0

    .line 2959
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2950
    monitor-enter p0

    .line 2951
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2952
    monitor-exit p0

    return-object p0

    .line 2953
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2938
    monitor-enter p0

    .line 2939
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2940
    monitor-exit p0

    return-object p0

    .line 2941
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2944
    monitor-enter p0

    .line 2945
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2946
    monitor-exit p0

    return-object p0

    .line 2947
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2932
    monitor-enter p0

    .line 2933
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2934
    monitor-exit p0

    return-object p0

    .line 2935
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"

    .prologue
    .line 2963
    monitor-enter p0

    .line 2964
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2965
    monitor-exit p0

    return-object p0

    .line 2966
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
