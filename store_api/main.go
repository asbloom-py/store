package main

import (
	"github.com/asbloom-py/store_api/server"
)

func main() {
    // 初期化

	// Initialize Gin
	// engine:= gin.Default()
    // engine.GET("/", func(c *gin.Context) {
    //     c.JSON(http.StatusOK, gin.H{
    //         "message": "hello world",
    //     })
    // })
    // engine.Run(":3000")
    server.Init()
	// merchants

}