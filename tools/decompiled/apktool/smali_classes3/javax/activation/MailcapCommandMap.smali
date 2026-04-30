.class public Ljavax/activation/MailcapCommandMap;
.super Ljavax/activation/CommandMap;
.source "MailcapCommandMap.java"


# static fields
.field private static final PROG:I

.field static class$javax$activation$MailcapCommandMap:Ljava/lang/Class;

.field private static defDB:Lcom/l/a/a/c;


# instance fields
.field private DB:[Lcom/l/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/l/a/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 135
    invoke-direct {p0}, Ljavax/activation/CommandMap;-><init>()V

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const-string/jumbo v0, "MailcapCommandMap: load HOME"

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 142
    :try_start_0
    const-string/jumbo v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, ".mailcap"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-direct {p0, v0}, Ljavax/activation/MailcapCommandMap;->loadFile(Ljava/lang/String;)Lcom/l/a/a/c;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    :cond_0
    :goto_0
    const-string/jumbo v0, "MailcapCommandMap: load SYS"

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 155
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "lib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "mailcap"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-direct {p0, v0}, Ljavax/activation/MailcapCommandMap;->loadFile(Ljava/lang/String;)Lcom/l/a/a/c;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_1

    .line 159
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    :cond_1
    :goto_1
    const-string/jumbo v0, "MailcapCommandMap: load JAR"

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 164
    const-string/jumbo v0, "META-INF/mailcap"

    invoke-direct {p0, v1, v0}, Ljavax/activation/MailcapCommandMap;->loadAllResources(Ljava/util/List;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v0, "MailcapCommandMap: load DEF"

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 167
    sget-object v0, Ljavax/activation/MailcapCommandMap;->class$javax$activation$MailcapCommandMap:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string/jumbo v0, "javax.activation.MailcapCommandMap"

    invoke-static {v0}, Ljavax/activation/MailcapCommandMap;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljavax/activation/MailcapCommandMap;->class$javax$activation$MailcapCommandMap:Ljava/lang/Class;

    :goto_2
    monitor-enter v0

    .line 169
    :try_start_2
    sget-object v2, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/l/a/a/c;

    if-nez v2, :cond_2

    .line 170
    const-string/jumbo v2, "/META-INF/mailcap.default"

    invoke-direct {p0, v2}, Ljavax/activation/MailcapCommandMap;->loadResource(Ljava/lang/String;)Lcom/l/a/a/c;

    move-result-object v2

    sput-object v2, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/l/a/a/c;

    .line 171
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    sget-object v0, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/l/a/a/c;

    if-eqz v0, :cond_3

    .line 174
    sget-object v0, Ljavax/activation/MailcapCommandMap;->defDB:Lcom/l/a/a/c;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/l/a/a/c;

    iput-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    .line 177
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/l/a/a/c;

    check-cast v0, [Lcom/l/a/a/c;

    iput-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    .line 178
    return-void

    .line 167
    :cond_4
    sget-object v0, Ljavax/activation/MailcapCommandMap;->class$javax$activation$MailcapCommandMap:Ljava/lang/Class;

    goto :goto_2

    .line 171
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 160
    :catch_0
    move-exception v0

    goto :goto_1

    .line 150
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-direct {p0}, Ljavax/activation/MailcapCommandMap;-><init>()V

    .line 325
    const-string/jumbo v0, "MailcapCommandMap: load PROG"

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 328
    :try_start_0
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    const/4 v1, 0x0

    new-instance v2, Lcom/l/a/a/c;

    invoke-direct {v2, p1}, Lcom/l/a/a/c;-><init>(Ljava/io/InputStream;)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-direct {p0}, Ljavax/activation/MailcapCommandMap;-><init>()V

    .line 308
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "MailcapCommandMap: load PROG from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 310
    :cond_0
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    new-instance v1, Lcom/l/a/a/c;

    invoke-direct {v1, p1}, Lcom/l/a/a/c;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v2

    .line 313
    :cond_1
    return-void
.end method

.method private appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    .locals 5

    .prologue
    .line 446
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 448
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 450
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 451
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 453
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 455
    new-instance v4, Ljavax/activation/CommandInfo;

    invoke-direct {v4, v0, v1}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 459
    :cond_1
    return-void
.end method

.method private appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 380
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 382
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 384
    invoke-direct {p0, p2, v0}, Ljavax/activation/MailcapCommandMap;->checkForVerb(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 386
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 387
    new-instance v3, Ljavax/activation/CommandInfo;

    invoke-direct {v3, v0, v1}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    :cond_1
    return-void
.end method

.method private checkForVerb(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 397
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 398
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/activation/CommandInfo;

    invoke-virtual {v0}, Ljavax/activation/CommandInfo;->getCommandName()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const/4 v0, 0x1

    .line 404
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 167
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    .locals 3

    .prologue
    .line 578
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    const-string/jumbo v0, "    got content-handler"

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 580
    :cond_0
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "      class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 585
    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 586
    if-nez v0, :cond_2

    .line 587
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 590
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 595
    :goto_0
    if-eqz v0, :cond_3

    .line 596
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/activation/DataContentHandler;

    .line 607
    :goto_1
    return-object v0

    .line 591
    :catch_0
    move-exception v0

    .line 593
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    goto :goto_0

    .line 597
    :catch_1
    move-exception v0

    .line 598
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 599
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Can\'t load DCH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 607
    :cond_3
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 600
    :catch_2
    move-exception v0

    .line 601
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 602
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Can\'t load DCH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 603
    :catch_3
    move-exception v0

    .line 604
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 605
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Can\'t load DCH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private loadAllResources(Ljava/util/List;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 217
    .line 222
    :try_start_0
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 223
    if-nez v1, :cond_0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 225
    :cond_0
    if-eqz v1, :cond_5

    .line 226
    invoke-static {v1, p2}, Ljavax/activation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v1

    move-object v4, v1

    .line 229
    :goto_0
    if-eqz v4, :cond_d

    .line 230
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    const-string/jumbo v1, "MailcapCommandMap: getResources"

    invoke-static {v1}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    :cond_1
    move v3, v0

    .line 232
    :goto_1
    array-length v1, v4

    if-ge v3, v1, :cond_d

    .line 233
    aget-object v5, v4, v3

    .line 234
    const/4 v2, 0x0

    .line 235
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "MailcapCommandMap: URL "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 238
    :cond_2
    :try_start_1
    invoke-static {v5}, Ljavax/activation/SecuritySupport;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v2

    .line 239
    if-eqz v2, :cond_6

    .line 240
    new-instance v1, Lcom/l/a/a/c;

    invoke-direct {v1, v2}, Lcom/l/a/a/c;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    const/4 v1, 0x1

    .line 242
    :try_start_2
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 243
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "MailcapCommandMap: successfully loaded mailcap file from URL: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v1

    .line 263
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 264
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 232
    :cond_4
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 228
    :cond_5
    :try_start_4
    invoke-static {p2}, Ljavax/activation/SecuritySupport;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    .line 248
    :cond_6
    :try_start_5
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "MailcapCommandMap: not loading mailcap file from URL: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 253
    :catch_0
    move-exception v1

    .line 254
    :goto_4
    :try_start_6
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 255
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "MailcapCommandMap: can\'t load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/l/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 263
    :cond_7
    if-eqz v2, :cond_4

    .line 264
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_3

    .line 265
    :catch_1
    move-exception v1

    goto :goto_3

    .line 257
    :catch_2
    move-exception v1

    .line 258
    :goto_5
    :try_start_8
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 259
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "MailcapCommandMap: can\'t load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/l/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 263
    :cond_8
    if-eqz v2, :cond_4

    .line 264
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_3

    .line 265
    :catch_3
    move-exception v1

    goto :goto_3

    .line 262
    :catchall_0
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 263
    :goto_6
    if-eqz v2, :cond_9

    .line 264
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 266
    :cond_9
    :goto_7
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 269
    :catch_4
    move-exception v0

    .line 270
    :goto_8
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 271
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "MailcapCommandMap: can\'t load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    :cond_a
    :goto_9
    if-nez v1, :cond_c

    .line 276
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 277
    const-string/jumbo v0, "MailcapCommandMap: !anyLoaded"

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 278
    :cond_b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/activation/MailcapCommandMap;->loadResource(Ljava/lang/String;)Lcom/l/a/a/c;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_c

    .line 280
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_c
    return-void

    :cond_d
    move v1, v0

    .line 272
    goto :goto_9

    .line 265
    :catch_5
    move-exception v1

    goto/16 :goto_3

    :catch_6
    move-exception v2

    goto :goto_7

    .line 269
    :catch_7
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_8

    .line 262
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 257
    :catch_8
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto/16 :goto_5

    .line 253
    :catch_9
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto/16 :goto_4

    :cond_e
    move v0, v1

    goto/16 :goto_2
.end method

.method private loadFile(Ljava/lang/String;)Lcom/l/a/a/c;
    .locals 2

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 291
    :try_start_0
    new-instance v0, Lcom/l/a/a/c;

    invoke-direct {v0, p1}, Lcom/l/a/a/c;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-object v0

    .line 292
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private loadResource(Ljava/lang/String;)Lcom/l/a/a/c;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 184
    .line 186
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljavax/activation/SecuritySupport;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 187
    if-eqz v2, :cond_2

    .line 188
    :try_start_1
    new-instance v0, Lcom/l/a/a/c;

    invoke-direct {v0, v2}, Lcom/l/a/a/c;-><init>(Ljava/io/InputStream;)V

    .line 189
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "MailcapCommandMap: successfully loaded mailcap file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    :cond_0
    if-eqz v2, :cond_1

    .line 207
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 210
    :cond_1
    :goto_0
    return-object v0

    .line 194
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "MailcapCommandMap: not loading mailcap file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 206
    :cond_3
    if-eqz v2, :cond_4

    .line 207
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_4
    :goto_1
    move-object v0, v1

    .line 210
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 199
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 200
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "MailcapCommandMap: can\'t load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 206
    :cond_5
    if-eqz v2, :cond_4

    .line 207
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 208
    :catch_1
    move-exception v0

    goto :goto_1

    .line 201
    :catch_2
    move-exception v0

    move-object v2, v1

    .line 202
    :goto_3
    :try_start_7
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 203
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "MailcapCommandMap: can\'t load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 206
    :cond_6
    if-eqz v2, :cond_4

    .line 207
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 208
    :catch_3
    move-exception v0

    goto :goto_1

    .line 205
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 206
    :goto_4
    if-eqz v2, :cond_7

    .line 207
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 209
    :cond_7
    :goto_5
    throw v0

    .line 208
    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_5

    .line 205
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 201
    :catch_7
    move-exception v0

    goto :goto_3

    .line 198
    :catch_8
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized addMailcap(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 519
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "MailcapCommandMap: add to PROG"

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    const/4 v1, 0x0

    new-instance v2, Lcom/l/a/a/c;

    invoke-direct {v2}, Lcom/l/a/a/c;-><init>()V

    aput-object v2, v0, v1

    .line 523
    :cond_0
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/l/a/a/c;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 534
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "MailcapCommandMap: createDataContentHandler for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 537
    :cond_0
    if-eqz p1, :cond_1

    .line 538
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move v2, v1

    .line 540
    :goto_0
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    array-length v0, v0

    if-ge v2, v0, :cond_5

    .line 541
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v0, v0, v2

    if-nez v0, :cond_3

    .line 540
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 543
    :cond_3
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 544
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "  search DB #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 545
    :cond_4
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/l/a/a/c;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 546
    if-eqz v0, :cond_2

    .line 547
    const-string/jumbo v3, "content-handler"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 548
    if-eqz v0, :cond_2

    .line 549
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 550
    invoke-direct {p0, v0}, Ljavax/activation/MailcapCommandMap;->getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 551
    if-eqz v0, :cond_2

    .line 574
    :goto_1
    monitor-exit p0

    return-object v0

    .line 558
    :cond_5
    :goto_2
    :try_start_1
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    .line 559
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v0, v0, v1

    if-nez v0, :cond_7

    .line 558
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 561
    :cond_7
    invoke-static {}, Lcom/l/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 562
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "  search fallback DB #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/l/a/a/b;->a(Ljava/lang/String;)V

    .line 563
    :cond_8
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/l/a/a/c;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 564
    if-eqz v0, :cond_6

    .line 565
    const-string/jumbo v2, "content-handler"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 566
    if-eqz v0, :cond_6

    .line 567
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 568
    invoke-direct {p0, v0}, Ljavax/activation/MailcapCommandMap;->getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 569
    if-eqz v0, :cond_6

    goto :goto_1

    .line 574
    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 415
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 416
    if-eqz p1, :cond_0

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move v1, v0

    .line 419
    :goto_0
    iget-object v3, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 420
    iget-object v3, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v3, v3, v1

    if-nez v3, :cond_2

    .line 419
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    :cond_2
    iget-object v3, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/l/a/a/c;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 423
    if-eqz v3, :cond_1

    .line 424
    invoke-direct {p0, v3, v2}, Ljavax/activation/MailcapCommandMap;->appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 428
    :cond_3
    :goto_2
    :try_start_1
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 429
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v1, v1, v0

    if-nez v1, :cond_5

    .line 428
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 431
    :cond_5
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/l/a/a/c;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 432
    if-eqz v1, :cond_4

    .line 433
    invoke-direct {p0, v1, v2}, Ljavax/activation/MailcapCommandMap;->appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V

    goto :goto_3

    .line 436
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/activation/CommandInfo;

    .line 437
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/activation/CommandInfo;

    check-cast v0, [Ljavax/activation/CommandInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getCommand(Ljava/lang/String;Ljava/lang/String;)Ljavax/activation/CommandInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 470
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 471
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move v2, v1

    .line 473
    :goto_0
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    .line 474
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    .line 473
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 476
    :cond_2
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/l/a/a/c;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_1

    .line 479
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 480
    if-eqz v0, :cond_1

    .line 481
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 483
    if-eqz v0, :cond_1

    .line 484
    new-instance v1, Ljavax/activation/CommandInfo;

    invoke-direct {v1, p2, v0}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 505
    :goto_1
    monitor-exit p0

    return-object v0

    .line 490
    :cond_3
    :goto_2
    :try_start_1
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 491
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    .line 490
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 493
    :cond_5
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/l/a/a/c;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_4

    .line 496
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 497
    if-eqz v0, :cond_4

    .line 498
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 500
    if-eqz v0, :cond_4

    .line 501
    new-instance v1, Ljavax/activation/CommandInfo;

    invoke-direct {v1, p2, v0}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_1

    .line 505
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMimeTypes()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 617
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 619
    :goto_0
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    .line 620
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    .line 619
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 622
    :cond_1
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/l/a/a/c;->a()[Ljava/lang/String;

    move-result-object v4

    .line 623
    if-eqz v4, :cond_0

    move v0, v1

    .line 624
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 626
    aget-object v5, v4, v0

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 627
    aget-object v5, v4, v0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 632
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 633
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    monitor-exit p0

    return-object v0

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNativeCommands(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 653
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 654
    if-eqz p1, :cond_0

    .line 655
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move v2, v1

    .line 657
    :goto_0
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    array-length v0, v0

    if-ge v2, v0, :cond_4

    .line 658
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    .line 657
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 660
    :cond_2
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/l/a/a/c;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 661
    if-eqz v4, :cond_1

    move v0, v1

    .line 662
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 664
    aget-object v5, v4, v0

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 665
    aget-object v5, v4, v0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 670
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 671
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    monitor-exit p0

    return-object v0

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPreferredCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 349
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 350
    if-eqz p1, :cond_0

    .line 351
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move v1, v0

    .line 353
    :goto_0
    iget-object v3, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 354
    iget-object v3, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v3, v3, v1

    if-nez v3, :cond_2

    .line 353
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :cond_2
    iget-object v3, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/l/a/a/c;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 357
    if-eqz v3, :cond_1

    .line 358
    invoke-direct {p0, v3, v2}, Ljavax/activation/MailcapCommandMap;->appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 362
    :cond_3
    :goto_2
    :try_start_1
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 363
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v1, v1, v0

    if-nez v1, :cond_5

    .line 362
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 365
    :cond_5
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/l/a/a/c;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/l/a/a/c;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 366
    if-eqz v1, :cond_4

    .line 367
    invoke-direct {p0, v1, v2}, Ljavax/activation/MailcapCommandMap;->appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V

    goto :goto_3

    .line 370
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/activation/CommandInfo;

    .line 371
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/activation/CommandInfo;

    check-cast v0, [Ljavax/activation/CommandInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    monitor-exit p0

    return-object v0
.end method
