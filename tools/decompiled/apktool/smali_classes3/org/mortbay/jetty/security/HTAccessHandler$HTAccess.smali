.class Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;
.super Ljava/lang/Object;
.source "HTAccessHandler.java"


# static fields
.field static final ALL:I = 0x1

.field static final ANY:I = 0x0

.field static final GROUP:Ljava/lang/String; = "group"

.field static final USER:Ljava/lang/String; = "user"

.field static final VALID_USER:Ljava/lang/String; = "valid-user"


# instance fields
.field _allowList:Ljava/util/ArrayList;

.field _denyList:Ljava/util/ArrayList;

.field _forbidden:Z

.field _groupFile:Ljava/lang/String;

.field _groupModified:J

.field _groupResource:Lorg/mortbay/resource/Resource;

.field _groups:Ljava/util/HashMap;

.field _lastModified:J

.field _methods:Ljava/util/HashMap;

.field _name:Ljava/lang/String;

.field _order:I

.field _requireEntities:Ljava/util/HashSet;

.field _requireName:Ljava/lang/String;

.field _satisfy:I

.field _type:Ljava/lang/String;

.field _userFile:Ljava/lang/String;

.field _userModified:J

.field _userResource:Lorg/mortbay/resource/Resource;

.field _users:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lorg/mortbay/resource/Resource;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_users:Ljava/util/HashMap;

    .line 323
    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groups:Ljava/util/HashMap;

    .line 326
    iput v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_satisfy:I

    .line 329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_methods:Ljava/util/HashMap;

    .line 330
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireEntities:Ljava/util/HashSet;

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_allowList:Ljava/util/ArrayList;

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_denyList:Ljava/util/ArrayList;

    .line 336
    iput-boolean v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_forbidden:Z

    .line 344
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 345
    invoke-direct {p0, v0}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->parse(Ljava/io/BufferedReader;)V

    .line 346
    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_lastModified:J

    .line 348
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userFile:Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    .line 351
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_forbidden:Z

    .line 354
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Could not find ht user file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupFile:Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    .line 363
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_forbidden:Z

    .line 366
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Could not find ht group file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 377
    :cond_1
    :goto_1
    return-void

    .line 356
    :cond_2
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "user file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 374
    iput-boolean v4, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_forbidden:Z

    .line 375
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v1

    const-string/jumbo v2, "LogSupport.EXCEPTION"

    invoke-interface {v1, v2, v0}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 368
    :cond_3
    :try_start_1
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "group file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getUserCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 569
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    if-nez v1, :cond_0

    .line 614
    :goto_0
    return-object v0

    .line 572
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_users:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userModified:J

    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 574
    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 575
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "LOAD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v0}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 576
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_users:Ljava/util/HashMap;

    .line 580
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userModified:J

    .line 583
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 585
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 586
    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 588
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 589
    if-ltz v2, :cond_3

    .line 591
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 592
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 593
    iget-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_users:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 596
    :catch_0
    move-exception v0

    .line 598
    :goto_2
    :try_start_2
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v2

    const-string/jumbo v3, "LogSupport.EXCEPTION"

    invoke-interface {v2, v3, v0}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 604
    if-eqz v1, :cond_4

    .line 605
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 614
    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_users:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 602
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 604
    :goto_4
    if-eqz v1, :cond_5

    .line 605
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 602
    :cond_5
    :goto_5
    throw v0

    .line 607
    :catch_1
    move-exception v1

    .line 609
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v2

    const-string/jumbo v3, "LogSupport.EXCEPTION"

    invoke-interface {v2, v3, v1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 607
    :catch_2
    move-exception v0

    .line 609
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v1

    const-string/jumbo v2, "LogSupport.EXCEPTION"

    :goto_6
    invoke-interface {v1, v2, v0}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 604
    :cond_6
    if-eqz v1, :cond_4

    .line 605
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 607
    :catch_3
    move-exception v0

    .line 609
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v1

    const-string/jumbo v2, "LogSupport.EXCEPTION"

    goto :goto_6

    .line 602
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 596
    :catch_4
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method private getUserGroups(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 620
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    if-nez v1, :cond_0

    .line 679
    :goto_0
    return-object v0

    .line 623
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groups:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupModified:J

    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 625
    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 626
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "LOAD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v0}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 628
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groups:Ljava/util/HashMap;

    .line 632
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupModified:J

    .line 635
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 637
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 638
    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 641
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v3, ": \t"

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 645
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 648
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 651
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groups:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 652
    if-nez v0, :cond_4

    .line 654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 655
    iget-object v5, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groups:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 661
    :catch_0
    move-exception v0

    .line 663
    :goto_2
    :try_start_2
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v2

    const-string/jumbo v3, "LogSupport.EXCEPTION"

    invoke-interface {v2, v3, v0}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 669
    if-eqz v1, :cond_5

    .line 670
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 679
    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 667
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 669
    :goto_4
    if-eqz v1, :cond_6

    .line 670
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 667
    :cond_6
    :goto_5
    throw v0

    .line 672
    :catch_1
    move-exception v1

    .line 674
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v2

    const-string/jumbo v3, "LogSupport.EXCEPTION"

    invoke-interface {v2, v3, v1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 672
    :catch_2
    move-exception v0

    .line 674
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v1

    const-string/jumbo v2, "LogSupport.EXCEPTION"

    :goto_6
    invoke-interface {v1, v2, v0}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 669
    :cond_7
    if-eqz v1, :cond_5

    .line 670
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 672
    :catch_3
    move-exception v0

    .line 674
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v1

    const-string/jumbo v2, "LogSupport.EXCEPTION"

    goto :goto_6

    .line 667
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 661
    :catch_4
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method private parse(Ljava/io/BufferedReader;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x7

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x20

    const/4 v6, 0x0

    .line 722
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 724
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 725
    const-string/jumbo v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    const-string/jumbo v0, "AuthUserFile"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userFile:Ljava/lang/String;

    goto :goto_0

    .line 731
    :cond_1
    const-string/jumbo v0, "AuthGroupFile"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 733
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupFile:Ljava/lang/String;

    goto :goto_0

    .line 735
    :cond_2
    const-string/jumbo v0, "AuthName"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 737
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_name:Ljava/lang/String;

    goto :goto_0

    .line 739
    :cond_3
    const-string/jumbo v0, "AuthType"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 741
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_type:Ljava/lang/String;

    goto :goto_0

    .line 744
    :cond_4
    const-string/jumbo v0, "<Limit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 747
    const/16 v1, 0x3e

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 750
    if-gez v1, :cond_1c

    .line 752
    :goto_1
    new-instance v1, Ljava/util/StringTokenizer;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 753
    :goto_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 755
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_methods:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 758
    :cond_5
    :goto_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 761
    const-string/jumbo v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 763
    const-string/jumbo v0, "satisfy"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 766
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v2

    .line 767
    :goto_4
    if-ge v1, v4, :cond_6

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v0, v7, :cond_6

    .line 768
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    move v0, v1

    .line 770
    :goto_5
    if-ge v0, v4, :cond_7

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-le v5, v7, :cond_7

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 772
    :cond_7
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 773
    const-string/jumbo v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 774
    iput v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_satisfy:I

    goto :goto_3

    .line 775
    :cond_8
    const-string/jumbo v1, "any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 776
    iput v8, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_satisfy:I

    goto :goto_3

    .line 778
    :cond_9
    const-string/jumbo v0, "require"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 781
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v2

    .line 782
    :goto_6
    if-ge v1, v4, :cond_a

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v0, v7, :cond_a

    .line 783
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    move v0, v1

    .line 785
    :goto_7
    if-ge v0, v4, :cond_b

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-le v5, v7, :cond_b

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 787
    :cond_b
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    .line 788
    const-string/jumbo v1, "user"

    iget-object v5, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 789
    const-string/jumbo v1, "user"

    iput-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    .line 795
    :cond_c
    :goto_8
    add-int/lit8 v0, v0, 0x1

    .line 796
    if-ge v0, v4, :cond_5

    .line 798
    :goto_9
    if-ge v0, v4, :cond_f

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v1, v7, :cond_f

    .line 799
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 790
    :cond_d
    const-string/jumbo v1, "group"

    iget-object v5, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 791
    const-string/jumbo v1, "group"

    iput-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    goto :goto_8

    .line 792
    :cond_e
    const-string/jumbo v1, "valid-user"

    iget-object v5, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 793
    const-string/jumbo v1, "valid-user"

    iput-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    goto :goto_8

    .line 801
    :cond_f
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 802
    :goto_a
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 804
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireEntities:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 809
    :cond_10
    const-string/jumbo v0, "order"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 811
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 812
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "orderline="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v4, "order="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v4, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_order:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6, v6}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 813
    :cond_11
    const-string/jumbo v0, "allow,deny"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_12

    .line 815
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v0

    const-string/jumbo v1, "==>allow+deny"

    invoke-interface {v0, v1, v6, v6}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 816
    iput v9, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_order:I

    goto/16 :goto_3

    .line 818
    :cond_12
    const-string/jumbo v0, "deny,allow"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_13

    .line 820
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v0

    const-string/jumbo v1, "==>deny,allow"

    invoke-interface {v0, v1, v6, v6}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 821
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_order:I

    goto/16 :goto_3

    .line 823
    :cond_13
    const-string/jumbo v0, "mutual-failure"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 825
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v0

    const-string/jumbo v1, "==>mutual"

    invoke-interface {v0, v1, v6, v6}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 826
    iput v8, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_order:I

    goto/16 :goto_3

    .line 832
    :cond_14
    const-string/jumbo v0, "allow from"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 834
    const/16 v0, 0xa

    .line 835
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 836
    :goto_b
    if-ge v0, v1, :cond_15

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v7, :cond_15

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 838
    :cond_15
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 839
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "allow process:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v6, v6}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 840
    :cond_16
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 841
    :goto_c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 843
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_allowList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 846
    :cond_17
    const-string/jumbo v0, "deny from"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 848
    const/16 v0, 0x9

    .line 849
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 850
    :goto_d
    if-ge v0, v1, :cond_18

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v7, :cond_18

    .line 851
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 852
    :cond_18
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 853
    invoke-static {}, Lorg/mortbay/jetty/security/HTAccessHandler;->access$000()Lorg/mortbay/log/Logger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "deny process:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v6, v6}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 855
    :cond_19
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 856
    :goto_e
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 858
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_denyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 861
    :cond_1a
    const-string/jumbo v0, "</Limit>"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_0

    .line 866
    :cond_1b
    return-void

    :cond_1c
    move v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public checkAccess(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 431
    .line 435
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_allowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_denyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v1, v2

    .line 439
    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_allowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 441
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_allowList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 442
    const-string/jumbo v4, "all"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v3

    :goto_2
    move v4, v2

    .line 472
    :goto_3
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_denyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_c

    .line 474
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_denyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 475
    const-string/jumbo v5, "all"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v0, v3

    .line 502
    :goto_4
    iget v4, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_order:I

    if-gez v4, :cond_a

    .line 503
    if-eqz v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    move v3, v2

    goto :goto_0

    .line 449
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 450
    if-lt v4, v6, :cond_5

    if-gt v4, v7, :cond_5

    .line 453
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v3

    .line 456
    goto :goto_2

    .line 462
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v3

    .line 465
    goto :goto_2

    .line 439
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 482
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 483
    if-lt v5, v6, :cond_8

    if-gt v5, v7, :cond_8

    .line 485
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    .line 488
    goto :goto_4

    .line 493
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    .line 496
    goto :goto_4

    .line 472
    :cond_9
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    .line 505
    :cond_a
    if-eqz v1, :cond_b

    if-eqz v0, :cond_0

    :cond_b
    move v3, v2

    goto :goto_0

    :cond_c
    move v0, v2

    goto :goto_4

    :cond_d
    move v1, v2

    goto :goto_2
.end method

.method public checkAuth(Ljava/lang/String;Ljava/lang/String;Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 511
    iget-object v3, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v0

    .line 516
    :cond_1
    if-nez p3, :cond_5

    move-object v3, v2

    .line 517
    :goto_1
    if-nez v3, :cond_7

    .line 520
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->getUserCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 521
    if-eqz v4, :cond_6

    const/4 v3, 0x2

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 522
    :goto_2
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p2, v3}, Lorg/mortbay/jetty/security/UnixCrypt;->crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 523
    :cond_2
    if-eqz v4, :cond_4

    const-string/jumbo v3, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_4
    move v0, v1

    .line 524
    goto :goto_0

    .line 516
    :cond_5
    invoke-interface {p3, p1, p2, p4}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v3

    goto :goto_1

    :cond_6
    move-object v3, p1

    .line 521
    goto :goto_2

    .line 527
    :cond_7
    iget-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 529
    iget-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireEntities:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_8
    move v0, v1

    .line 545
    goto :goto_0

    .line 532
    :cond_9
    iget-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    const-string/jumbo v3, "group"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 534
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->getUserGroups(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 535
    if-eqz v4, :cond_8

    .line 536
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_8

    .line 537
    iget-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireEntities:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_3

    .line 540
    :cond_a
    iget-object v2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    const-string/jumbo v3, "valid-user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_0
.end method

.method public getGroupResource()Lorg/mortbay/resource/Resource;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupResource:Lorg/mortbay/resource/Resource;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 394
    iget-wide v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_lastModified:J

    return-wide v0
.end method

.method public getMethods()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_methods:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSatisfy()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_satisfy:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserResource()Lorg/mortbay/resource/Resource;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userResource:Lorg/mortbay/resource/Resource;

    return-object v0
.end method

.method public isAccessLimited()Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_allowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_denyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 552
    :cond_0
    const/4 v0, 0x1

    .line 554
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthLimited()Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 561
    const/4 v0, 0x1

    .line 563
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForbidden()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_forbidden:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 685
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 687
    const-string/jumbo v1, "AuthUserFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 688
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_userFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 689
    const-string/jumbo v1, ", AuthGroupFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_groupFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    const-string/jumbo v1, ", AuthName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 692
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 693
    const-string/jumbo v1, ", AuthType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 694
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    const-string/jumbo v1, ", Methods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 696
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_methods:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 697
    const-string/jumbo v1, ", satisfy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 698
    iget v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_satisfy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 699
    iget v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_order:I

    if-gez v1, :cond_0

    .line 700
    const-string/jumbo v1, ", order=deny,allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 706
    :goto_0
    const-string/jumbo v1, ", Allow from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 707
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_allowList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 708
    const-string/jumbo v1, ", deny from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_denyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 710
    const-string/jumbo v1, ", requireName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 711
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 712
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 713
    iget-object v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_requireEntities:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 715
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 701
    :cond_0
    iget v1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$HTAccess;->_order:I

    if-lez v1, :cond_1

    .line 702
    const-string/jumbo v1, ", order=allow,deny"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 704
    :cond_1
    const-string/jumbo v1, ", order=mutual-failure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
