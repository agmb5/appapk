.class Lcom/example/seven/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/seven/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/seven/MainActivity;

.field final synthetic val$algorithm:Ljava/lang/String;

.field final synthetic val$k:Ljavax/crypto/SecretKey;

.field final synthetic val$vi_para:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method constructor <init>(Lcom/example/seven/MainActivity;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/example/seven/MainActivity$1;->this$0:Lcom/example/seven/MainActivity;

    iput-object p2, p0, Lcom/example/seven/MainActivity$1;->val$algorithm:Ljava/lang/String;

    iput-object p3, p0, Lcom/example/seven/MainActivity$1;->val$k:Ljavax/crypto/SecretKey;

    iput-object p4, p0, Lcom/example/seven/MainActivity$1;->val$vi_para:Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 60
    :try_start_0
    iget-object p1, p0, Lcom/example/seven/MainActivity$1;->this$0:Lcom/example/seven/MainActivity;

    iget-object v0, p0, Lcom/example/seven/MainActivity$1;->val$algorithm:Ljava/lang/String;

    invoke-static {}, Lcom/example/seven/ApiHelper;->baseUrlFromJNI()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/example/seven/MainActivity$1;->val$k:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/example/seven/MainActivity$1;->val$vi_para:Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v0, v1, v2, v3}, Lcom/example/seven/MainActivity;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/example/seven/MainActivity;->access$000(Lcom/example/seven/MainActivity;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/example/seven/MainActivity$1;->this$0:Lcom/example/seven/MainActivity;

    iget-object v0, p0, Lcom/example/seven/MainActivity$1;->val$algorithm:Ljava/lang/String;

    invoke-static {}, Lcom/example/seven/ApiHelper1;->baseUrlFromJNI1()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/example/seven/MainActivity$1;->val$k:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/example/seven/MainActivity$1;->val$vi_para:Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v0, v1, v2, v3}, Lcom/example/seven/MainActivity;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/example/seven/MainActivity;->access$000(Lcom/example/seven/MainActivity;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/example/seven/MainActivity$1;->this$0:Lcom/example/seven/MainActivity;

    iget-object v0, p0, Lcom/example/seven/MainActivity$1;->val$algorithm:Ljava/lang/String;

    invoke-static {}, Lcom/example/seven/ApiHelper2;->baseUrlFromJNI2()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/example/seven/MainActivity$1;->val$k:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/example/seven/MainActivity$1;->val$vi_para:Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v0, v1, v2, v3}, Lcom/example/seven/MainActivity;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/example/seven/MainActivity;->access$000(Lcom/example/seven/MainActivity;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/example/seven/MainActivity$1;->this$0:Lcom/example/seven/MainActivity;

    iget-object v0, p0, Lcom/example/seven/MainActivity$1;->val$algorithm:Ljava/lang/String;

    invoke-static {}, Lcom/example/seven/ApiHelper3;->baseUrlFromJNI3()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/example/seven/MainActivity$1;->val$k:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/example/seven/MainActivity$1;->val$vi_para:Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v0, v1, v2, v3}, Lcom/example/seven/MainActivity;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/example/seven/MainActivity;->access$000(Lcom/example/seven/MainActivity;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/example/seven/MainActivity$1;->this$0:Lcom/example/seven/MainActivity;

    iget-object v0, p0, Lcom/example/seven/MainActivity$1;->val$algorithm:Ljava/lang/String;

    invoke-static {}, Lcom/example/seven/ApiHelper4;->baseUrlFromJNI4()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/example/seven/MainActivity$1;->val$k:Ljavax/crypto/SecretKey;

    iget-object p0, p0, Lcom/example/seven/MainActivity$1;->val$vi_para:Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v0, v1, v2, p0}, Lcom/example/seven/MainActivity;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/example/seven/MainActivity;->access$000(Lcom/example/seven/MainActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    :goto_0
    return-void
.end method
