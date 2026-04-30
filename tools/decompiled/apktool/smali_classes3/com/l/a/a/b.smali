.class public Lcom/l/a/a/b;
.super Ljava/lang/Object;
.source "LogSupport.java"


# static fields
.field private static a:Z

.field private static b:Ljava/util/logging/Logger;

.field private static final c:Ljava/util/logging/Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/l/a/a/b;->a:Z

    .line 39
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sput-object v0, Lcom/l/a/a/b;->c:Ljava/util/logging/Level;

    .line 43
    :try_start_0
    const-string/jumbo v0, "javax.activation.debug"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/l/a/a/b;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    const-string/jumbo v0, "javax.activation"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/l/a/a/b;->b:Ljava/util/logging/Logger;

    .line 48
    return-void

    .line 44
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    sget-boolean v0, Lcom/l/a/a/b;->a:Z

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    :cond_0
    sget-object v0, Lcom/l/a/a/b;->b:Ljava/util/logging/Logger;

    sget-object v1, Lcom/l/a/a/b;->c:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 64
    sget-boolean v0, Lcom/l/a/a/b;->a:Z

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "; Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    :cond_0
    sget-object v0, Lcom/l/a/a/b;->b:Ljava/util/logging/Logger;

    sget-object v1, Lcom/l/a/a/b;->c:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 70
    sget-boolean v0, Lcom/l/a/a/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/l/a/a/b;->b:Ljava/util/logging/Logger;

    sget-object v1, Lcom/l/a/a/b;->c:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
