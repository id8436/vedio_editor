.class public Lorg/mortbay/component/Container;
.super Ljava/lang/Object;
.source "Container.java"


# instance fields
.field private _listeners:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    return-void
.end method

.method private add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 200
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 204
    new-instance v0, Lorg/mortbay/component/Container$Relationship;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/mortbay/component/Container$Relationship;-><init>(Lorg/mortbay/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lorg/mortbay/component/Container$1;)V

    .line 205
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 206
    iget-object v1, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/component/Container$Listener;

    invoke-interface {v1, v0}, Lorg/mortbay/component/Container$Listener;->add(Lorg/mortbay/component/Container$Relationship;)V

    .line 205
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 208
    :cond_1
    return-void
.end method

.method private remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 218
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 222
    new-instance v0, Lorg/mortbay/component/Container$Relationship;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/mortbay/component/Container$Relationship;-><init>(Lorg/mortbay/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lorg/mortbay/component/Container$1;)V

    .line 223
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 224
    iget-object v1, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/component/Container$Listener;

    invoke-interface {v1, v0}, Lorg/mortbay/component/Container$Listener;->remove(Lorg/mortbay/component/Container$Relationship;)V

    .line 223
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 226
    :cond_1
    return-void
.end method


# virtual methods
.method public addBean(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/component/Container$Listener;

    .line 177
    invoke-interface {v0, p1}, Lorg/mortbay/component/Container$Listener;->addBean(Ljava/lang/Object;)V

    .line 174
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method public declared-synchronized addEventListener(Lorg/mortbay/component/Container$Listener;)V
    .locals 1

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeBean(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 188
    iget-object v0, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/component/Container$Listener;

    invoke-interface {v0, p1}, Lorg/mortbay/component/Container$Listener;->removeBean(Ljava/lang/Object;)V

    .line 187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method public declared-synchronized removeEventListener(Lorg/mortbay/component/Container$Listener;)V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0, p1, p2, p4}, Lorg/mortbay/component/Container;->remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-direct {p0, p1, p3, p4}, Lorg/mortbay/component/Container;->add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-direct {p0, p1, p2, p4}, Lorg/mortbay/component/Container;->remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    if-eqz p5, :cond_0

    .line 85
    invoke-virtual {p0, p2}, Lorg/mortbay/component/Container;->removeBean(Ljava/lang/Object;)V

    .line 88
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    if-eqz p5, :cond_1

    .line 91
    invoke-virtual {p0, p3}, Lorg/mortbay/component/Container;->addBean(Ljava/lang/Object;)V

    .line 92
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lorg/mortbay/component/Container;->add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_2
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 106
    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 120
    monitor-enter p0

    .line 121
    if-eqz p3, :cond_9

    .line 123
    :try_start_0
    array-length v1, p3

    new-array v1, v1, [Ljava/lang/Object;

    .line 125
    array-length v2, p3

    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-lez v2, :cond_2

    .line 127
    const/4 v2, 0x1

    .line 128
    if-eqz p2, :cond_0

    .line 130
    array-length v3, p2

    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_0

    .line 132
    aget-object v3, p3, v5

    if-eqz v3, :cond_8

    aget-object v3, p3, v5

    aget-object v6, p2, v4

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 134
    const/4 v2, 0x0

    aput-object v2, p2, v4

    move v3, v4

    move v2, v0

    .line 135
    goto :goto_1

    .line 139
    :cond_0
    if-eqz v2, :cond_1

    .line 140
    aget-object v2, p3, v5

    aput-object v2, v1, v5

    :cond_1
    move v2, v5

    .line 141
    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 144
    :goto_2
    if-eqz p2, :cond_3

    .line 146
    array-length v1, p2

    :goto_3
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_3

    .line 148
    aget-object v1, p2, v2

    if-eqz v1, :cond_7

    .line 150
    aget-object v1, p2, v2

    invoke-direct {p0, p1, v1, p4}, Lorg/mortbay/component/Container;->remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    if-eqz p5, :cond_7

    .line 152
    aget-object v1, p2, v2

    invoke-virtual {p0, v1}, Lorg/mortbay/component/Container;->removeBean(Ljava/lang/Object;)V

    move v1, v2

    goto :goto_3

    .line 157
    :cond_3
    if-eqz v3, :cond_6

    .line 159
    :goto_4
    array-length v1, v3

    if-ge v0, v1, :cond_6

    .line 160
    aget-object v1, v3, v0

    if-eqz v1, :cond_5

    .line 162
    if-eqz p5, :cond_4

    .line 163
    aget-object v1, v3, v0

    invoke-virtual {p0, v1}, Lorg/mortbay/component/Container;->addBean(Ljava/lang/Object;)V

    .line 164
    :cond_4
    aget-object v1, v3, v0

    invoke-direct {p0, p1, v1, p4}, Lorg/mortbay/component/Container;->add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 167
    :cond_6
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    move v3, v4

    goto :goto_1

    :cond_9
    move-object v3, v1

    goto :goto_2
.end method
