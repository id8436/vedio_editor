.class public abstract Ljavax/mail/Transport;
.super Ljavax/mail/Service;
.source "Transport.java"


# instance fields
.field private transportListeners:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljavax/mail/Service;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    .line 65
    return-void
.end method

.method public static send(Ljavax/mail/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 98
    invoke-virtual {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    invoke-static {p0, v0}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    .line 99
    return-void
.end method

.method public static send(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 120
    invoke-static {p0, p1}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    .line 121
    return-void
.end method

.method private static send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 127
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 128
    :cond_0
    new-instance v0, Ljavax/mail/SendFailedException;

    const-string/jumbo v1, "No recipient addresses"

    invoke-direct {v0, v1}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 137
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 138
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 139
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    move v1, v3

    .line 141
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_3

    .line 143
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 145
    aget-object v6, p1, v1

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 141
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 148
    :cond_2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 149
    aget-object v6, p1, v1

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 150
    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v1

    .line 155
    if-nez v1, :cond_4

    .line 156
    new-instance v0, Ljavax/mail/SendFailedException;

    const-string/jumbo v1, "No recipient addresses"

    invoke-direct {v0, v1}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_4
    iget-object v0, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    move-object v6, v0

    .line 165
    :goto_2
    if-ne v1, v4, :cond_7

    .line 166
    aget-object v0, p1, v3

    invoke-virtual {v6, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v1

    .line 168
    :try_start_0
    invoke-virtual {v1}, Ljavax/mail/Transport;->connect()V

    .line 169
    invoke-virtual {v1, p0, p1}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v1}, Ljavax/mail/Transport;->close()V

    .line 257
    :cond_5
    return-void

    .line 158
    :cond_6
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0, v5}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    .line 171
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljavax/mail/Transport;->close()V

    .line 172
    throw v0

    .line 183
    :cond_7
    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v10

    move v1, v3

    move-object v2, v5

    .line 184
    :cond_8
    :goto_3
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 185
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 186
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v11

    new-array v11, v11, [Ljavax/mail/Address;

    .line 187
    invoke-virtual {v0, v11}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 190
    aget-object v0, v11, v3

    invoke-virtual {v6, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v12

    if-nez v12, :cond_9

    move v0, v3

    .line 193
    :goto_4
    array-length v12, v11

    if-ge v0, v12, :cond_8

    .line 194
    aget-object v12, v11, v0

    invoke-virtual {v7, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 198
    :cond_9
    :try_start_1
    invoke-virtual {v12}, Ljavax/mail/Transport;->connect()V

    .line 199
    invoke-virtual {v12, p0, v11}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_1
    .catch Ljavax/mail/SendFailedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    invoke-virtual {v12}, Ljavax/mail/Transport;->close()V

    move v0, v1

    :goto_5
    move v1, v0

    .line 235
    goto :goto_3

    .line 200
    :catch_0
    move-exception v0

    .line 203
    if-nez v2, :cond_a

    move-object v2, v0

    .line 209
    :goto_6
    :try_start_2
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getInvalidAddresses()[Ljavax/mail/Address;

    move-result-object v11

    .line 210
    if-eqz v11, :cond_b

    move v1, v3

    .line 211
    :goto_7
    array-length v13, v11

    if-ge v1, v13, :cond_b

    .line 212
    aget-object v13, v11, v1

    invoke-virtual {v7, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 206
    :cond_a
    invoke-virtual {v2, v0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    .line 233
    :catchall_1
    move-exception v0

    invoke-virtual {v12}, Ljavax/mail/Transport;->close()V

    .line 234
    throw v0

    .line 215
    :cond_b
    :try_start_3
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getValidSentAddresses()[Ljavax/mail/Address;

    move-result-object v11

    .line 216
    if-eqz v11, :cond_c

    move v1, v3

    .line 217
    :goto_8
    array-length v13, v11

    if-ge v1, v13, :cond_c

    .line 218
    aget-object v13, v11, v1

    invoke-virtual {v8, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 221
    :cond_c
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getValidUnsentAddresses()[Ljavax/mail/Address;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_d

    move v0, v3

    .line 223
    :goto_9
    array-length v11, v1

    if-ge v0, v11, :cond_d

    .line 224
    aget-object v11, v1, v0

    invoke-virtual {v9, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 233
    :cond_d
    invoke-virtual {v12}, Ljavax/mail/Transport;->close()V

    move v0, v4

    .line 234
    goto :goto_5

    .line 225
    :catch_1
    move-exception v0

    .line 228
    if-nez v2, :cond_e

    move-object v2, v0

    .line 233
    :goto_a
    invoke-virtual {v12}, Ljavax/mail/Transport;->close()V

    move v0, v4

    .line 234
    goto :goto_5

    .line 231
    :cond_e
    :try_start_4
    invoke-virtual {v2, v0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_a

    .line 238
    :cond_f
    if-nez v1, :cond_10

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    :cond_10
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 243
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v3, v0, [Ljavax/mail/Address;

    .line 244
    invoke-virtual {v8, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 246
    :goto_b
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 247
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v4, v0, [Ljavax/mail/Address;

    .line 248
    invoke-virtual {v9, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 250
    :goto_c
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 251
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v5, v0, [Ljavax/mail/Address;

    .line 252
    invoke-virtual {v7, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 254
    :cond_11
    new-instance v0, Ljavax/mail/SendFailedException;

    const-string/jumbo v1, "Sending failed"

    invoke-direct/range {v0 .. v5}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v0

    :cond_12
    move-object v4, v5

    goto :goto_c

    :cond_13
    move-object v3, v5

    goto :goto_b
.end method


# virtual methods
.method public declared-synchronized addTransportListener(Ljavax/mail/event/TransportListener;)V
    .locals 1

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    .line 297
    :cond_0
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    .locals 7

    .prologue
    .line 327
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 330
    :cond_0
    new-instance v0, Ljavax/mail/event/TransportEvent;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljavax/mail/event/TransportEvent;-><init>(Ljavax/mail/Transport;I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 332
    iget-object v1, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Transport;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    goto :goto_0
.end method

.method public declared-synchronized removeTransportListener(Ljavax/mail/event/TransportListener;)V
    .locals 1

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_0
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method
