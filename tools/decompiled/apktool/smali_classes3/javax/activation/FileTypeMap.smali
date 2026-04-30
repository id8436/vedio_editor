.class public abstract Ljavax/activation/FileTypeMap;
.super Ljava/lang/Object;
.source "FileTypeMap.java"


# static fields
.field static class$javax$activation$FileTypeMap:Ljava/lang/Class;

.field private static defaultMap:Ljavax/activation/FileTypeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 95
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

.method public static getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljavax/activation/MimetypesFileTypeMap;

    invoke-direct {v0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    sput-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    .line 116
    :cond_0
    sget-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    return-object v0
.end method

.method public static setDefaultFileTypeMap(Ljavax/activation/FileTypeMap;)V
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    sput-object p0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    .line 101
    return-void

    .line 91
    :catch_0
    move-exception v1

    .line 95
    sget-object v0, Ljavax/activation/FileTypeMap;->class$javax$activation$FileTypeMap:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "javax.activation.FileTypeMap"

    invoke-static {v0}, Ljavax/activation/FileTypeMap;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljavax/activation/FileTypeMap;->class$javax$activation$FileTypeMap:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 97
    throw v1

    .line 95
    :cond_1
    sget-object v0, Ljavax/activation/FileTypeMap;->class$javax$activation$FileTypeMap:Ljava/lang/Class;

    goto :goto_0
.end method


# virtual methods
.method public abstract getContentType(Ljava/io/File;)Ljava/lang/String;
.end method

.method public abstract getContentType(Ljava/lang/String;)Ljava/lang/String;
.end method
