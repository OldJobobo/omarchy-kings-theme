--                                                                       
--      *****                                                            
--   ******                  *                                           
--  **   *  *    **         ***                                          
-- *    *  *   **** *        *                                           
--     *  *     ****                                             ****    
--    ** **    * **        ***     ***  ****        ****        * **** * 
--    ** **   *             ***     **** **** *    *  ***  *   **  ****  
--    ** *****               **      **   ****    *    ****   ****       
--    ** ** ***              **      **    **    **     **      ***      
--    ** **   ***            **      **    **    **     **        ***    
--    *  **    ***           **      **    **    **     **          ***  
--       *       ***         **      **    **    **     **     ****  **  
--   ****         ***        **      **    **    **     **    * **** *   
--  *  *****        ***  *   *** *   ***   ***    ********       ****    
-- *    ***           ***     ***     ***   ***     *** ***              
-- *                                                     ***             
--  **                                             ****   ***            
--                                               *******  **             
--                                              *     ****               
--                                                                       

return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#261e12", -- Default background
                base01 = "#564a38", -- Lighter background (status bars)
                base02 = "#261e12", -- Selection background
                base03 = "#564a38", -- Comments, invisibles
                base04 = "#c8a03c", -- Dark foreground
                base05 = "#d9c27a", -- Default foreground
                base06 = "#f3e6bf", -- Light foreground
                base07 = "#f3e6bf", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#a33d4e", -- Variables, errors, red
                base09 = "#cf6f7e", -- Integers, constants
                base0A = "#c8a03c", -- Classes, types, yellow
                base0B = "#2f7f88", -- Strings (teal)
                base0C = "#5d7d3a", -- Support, regex (green in cyan slot)
                base0D = "#7550a3", -- Functions, keywords (purple)
                base0E = "#2e6fb8", -- Keywords, storage (lapis)
                base0F = "#f3e6bf", -- Deprecated
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}

--               .;                          
--    .;;.    .-.;'     .'                   
--   ;;  `;`-' .;  .-..'                     
--  ;;    :.  ::  :   ;                      
-- ;;     ;'_;;_.-`:::'`.                    
-- `;.__.'  .;;;        .           .        
--           .;'      .'          .'         
--          .;'.-.   ;-.   .-.   ;-.   .-.   
-- .-.     .;';   ;';   ; ;   ;';   ; ;   ;' 
-- `.     .;  `;;'.'`::'`-`;;'.'`::'`-`;;'   
--   `;;;;;;'                                
