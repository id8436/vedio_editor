.class public Lorg/mortbay/util/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v2, v1

    .line 46
    :goto_0
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 49
    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 52
    :cond_1
    if-nez p0, :cond_2

    move-object v0, v1

    :goto_1
    move-object v4, v0

    move-object v0, v2

    move-object v2, v4

    .line 53
    :goto_2
    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 56
    if-nez v3, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_3
    move-object v2, v0

    move-object v0, v3

    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 56
    goto :goto_3

    .line 59
    :cond_4
    if-nez v0, :cond_5

    .line 61
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 64
    :cond_5
    return-object v0
.end method

.method public static getResourceBundle(Ljava/lang/Class;Ljava/lang/String;ZLjava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 118
    .line 120
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v2, v1

    move-object v3, v1

    .line 121
    :goto_0
    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 123
    :try_start_0
    invoke-static {p1, p3, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 125
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v4

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 125
    goto :goto_0

    .line 128
    :cond_2
    if-nez p0, :cond_3

    move-object v0, v1

    :goto_2
    move-object v4, v0

    move-object v0, v2

    move-object v2, v3

    .line 129
    :goto_3
    if-nez v0, :cond_5

    if-eqz v4, :cond_5

    .line 131
    :try_start_1
    invoke-static {p1, p3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    .line 133
    :goto_4
    if-nez v2, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_5
    move-object v4, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_3

    .line 128
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_2

    .line 132
    :catch_1
    move-exception v3

    if-nez v2, :cond_9

    move-object v2, v0

    goto :goto_4

    :cond_4
    move-object v0, v1

    .line 133
    goto :goto_5

    .line 136
    :cond_5
    if-nez v0, :cond_7

    .line 138
    :try_start_2
    invoke-static {p1, p3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    move-object v1, v2

    .line 142
    :cond_6
    :goto_6
    if-eqz v0, :cond_8

    .line 143
    return-object v0

    .line 139
    :catch_2
    move-exception v1

    if-eqz v2, :cond_6

    :cond_7
    move-object v1, v2

    goto :goto_6

    .line 144
    :cond_8
    throw v1

    :cond_9
    move-object v3, v2

    move-object v2, v0

    goto :goto_4
.end method

.method public static loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 86
    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v2, v1

    move-object v3, v1

    .line 89
    :goto_0
    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 91
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 93
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v4

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 93
    goto :goto_0

    .line 96
    :cond_2
    if-nez p0, :cond_3

    move-object v0, v1

    :goto_2
    move-object v4, v0

    move-object v0, v2

    move-object v2, v3

    .line 97
    :goto_3
    if-nez v0, :cond_5

    if-eqz v4, :cond_5

    .line 99
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    .line 101
    :goto_4
    if-nez v2, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_5
    move-object v4, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_3

    .line 96
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_2

    .line 100
    :catch_1
    move-exception v3

    if-nez v2, :cond_9

    move-object v2, v0

    goto :goto_4

    :cond_4
    move-object v0, v1

    .line 101
    goto :goto_5

    .line 104
    :cond_5
    if-nez v0, :cond_7

    .line 106
    :try_start_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    move-object v1, v2

    .line 110
    :cond_6
    :goto_6
    if-eqz v0, :cond_8

    .line 111
    return-object v0

    .line 107
    :catch_2
    move-exception v1

    if-eqz v2, :cond_6

    :cond_7
    move-object v1, v2

    goto :goto_6

    .line 112
    :cond_8
    throw v1

    :cond_9
    move-object v3, v2

    move-object v2, v0

    goto :goto_4
.end method
