.class public Lorg/mortbay/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final EXCEPTION:Ljava/lang/String; = "EXCEPTION "

.field public static final IGNORED:Ljava/lang/String; = "IGNORED"

.field public static final IGNORED_FMT:Ljava/lang/String; = "IGNORED: {}"

.field public static final NOT_IMPLEMENTED:Ljava/lang/String; = "NOT IMPLEMENTED "

.field public static __ignored:Z

.field private static __log:Lorg/mortbay/log/Logger;

.field public static __logClass:Ljava/lang/String;

.field private static final __nestedEx:[Ljava/lang/String;

.field private static final __noArgs:[Ljava/lang/Class;

.field public static __verbose:Z

.field static class$org$mortbay$log$Log:Ljava/lang/Class;

.field static class$org$mortbay$log$StdErrLog:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "getTargetException"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "getTargetError"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "getException"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "getRootCause"

    aput-object v2, v0, v1

    sput-object v0, Lorg/mortbay/log/Log;->__nestedEx:[Ljava/lang/String;

    .line 39
    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lorg/mortbay/log/Log;->__noArgs:[Ljava/lang/Class;

    .line 53
    new-instance v0, Lorg/mortbay/log/Log$1;

    invoke-direct {v0}, Lorg/mortbay/log/Log$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 67
    :try_start_0
    sget-object v0, Lorg/mortbay/log/Log;->class$org$mortbay$log$Log:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.mortbay.log.Log"

    invoke-static {v0}, Lorg/mortbay/log/Log;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/log/Log;->class$org$mortbay$log$Log:Ljava/lang/Class;

    :goto_0
    sget-object v1, Lorg/mortbay/log/Log;->__logClass:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/log/Logger;

    sput-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 79
    :cond_0
    :goto_1
    sget-object v1, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    const-string/jumbo v2, "Logging to {} via {}"

    sget-object v3, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lorg/mortbay/log/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    return-void

    .line 67
    :cond_1
    :try_start_1
    sget-object v0, Lorg/mortbay/log/Log;->class$org$mortbay$log$Log:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 72
    sget-object v0, Lorg/mortbay/log/Log;->class$org$mortbay$log$StdErrLog:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "org.mortbay.log.StdErrLog"

    invoke-static {v0}, Lorg/mortbay/log/Log;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/log/Log;->class$org$mortbay$log$StdErrLog:Ljava/lang/Class;

    .line 73
    :goto_2
    new-instance v2, Lorg/mortbay/log/StdErrLog;

    invoke-direct {v2}, Lorg/mortbay/log/StdErrLog;-><init>()V

    sput-object v2, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/mortbay/log/Log;->__logClass:Ljava/lang/String;

    .line 75
    sget-boolean v2, Lorg/mortbay/log/Log;->__verbose:Z

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 72
    :cond_2
    sget-object v0, Lorg/mortbay/log/Log;->class$org$mortbay$log$StdErrLog:Ljava/lang/Class;

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 67
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

.method public static debug(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    invoke-interface {v0, p0, v1, v1}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    invoke-interface {v0, p0, p1, p2}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    const-string/jumbo v1, "EXCEPTION "

    invoke-interface {v0, v1, p0}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    invoke-static {p0}, Lorg/mortbay/log/Log;->unwind(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getLog()Lorg/mortbay/log/Logger;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/mortbay/log/Logger;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    .line 214
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    .line 217
    :goto_0
    return-object v0

    .line 215
    :cond_0
    if-nez p0, :cond_1

    .line 216
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    goto :goto_0

    .line 217
    :cond_1
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    invoke-interface {v0, p0}, Lorg/mortbay/log/Logger;->getLogger(Ljava/lang/String;)Lorg/mortbay/log/Logger;

    move-result-object v0

    goto :goto_0
.end method

.method public static ignore(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    sget-boolean v0, Lorg/mortbay/log/Log;->__ignored:Z

    if-eqz v0, :cond_2

    .line 133
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    const-string/jumbo v1, "IGNORED"

    invoke-interface {v0, v1, p0}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    invoke-static {p0}, Lorg/mortbay/log/Log;->unwind(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 136
    :cond_2
    sget-boolean v0, Lorg/mortbay/log/Log;->__verbose:Z

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    const-string/jumbo v1, "IGNORED"

    invoke-interface {v0, v1, p0}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    invoke-static {p0}, Lorg/mortbay/log/Log;->unwind(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    invoke-interface {v0, p0, v1, v1}, Lorg/mortbay/log/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lorg/mortbay/log/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    invoke-interface {v0, p0, p1, p2}, Lorg/mortbay/log/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    invoke-interface {v0}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public static setLog(Lorg/mortbay/log/Logger;)V
    .locals 0

    .prologue
    .line 84
    sput-object p0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    .line 85
    return-void
.end method

.method private static unwind(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 222
    if-nez p0, :cond_1

    .line 235
    :cond_0
    return-void

    .line 224
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lorg/mortbay/log/Log;->__nestedEx:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 228
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Lorg/mortbay/log/Log;->__nestedEx:[Ljava/lang/String;

    aget-object v2, v2, v1

    sget-object v3, Lorg/mortbay/log/Log;->__noArgs:[Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 229
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 230
    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    .line 231
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Nested in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    invoke-interface {v0, p0, v1, v1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    invoke-interface {v0, p0, p1, p2}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    invoke-interface {v0, p0, p1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    invoke-static {p1}, Lorg/mortbay/log/Log;->unwind(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static warn(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 202
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    sget-object v0, Lorg/mortbay/log/Log;->__log:Lorg/mortbay/log/Logger;

    const-string/jumbo v1, "EXCEPTION "

    invoke-interface {v0, v1, p0}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    invoke-static {p0}, Lorg/mortbay/log/Log;->unwind(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
