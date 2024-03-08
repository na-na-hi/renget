# C&C proxy info & stats

-> https://proxy.cnc-club.dev/ <-
-> Not accepting new users <-


- Email: cncanon1@proton.me - for personal contact or proxy issues.
- Anyan OCs - https://rentry.org/anyan_oc

Latest refill (March 8th).
- **OpenAI** 0 -> 5 (random assortment, if they die I'll refill again)
- **AWS Claude** 3 (no change), proxy shows up 2 because AWS didn't enable Sonnet on one of the keys 

## Changelog
February 23rd:
- Lowered quotas for GPT-4 and GPT-4-Turbo to saner values that'll help the proxy stay for longer:
  - GPT-4 - 819200 (100 messages at full context)
  - GPT-4-Turbo - 4259840 (65 messages at max 65536 context)
- Disabled two tokens with abnormal proxy usage. Doing almost constant non-stop prompting for literal days (even if the total prompt/token count isn't that high per day) is not normal: ![](https://i.imgur.com/rsUWqJ0.png)

January 23rd:
  - Had to switch the VPS host because the old one stopped working (although apparently it was just a temporary outage). Sorry for the ~1.5 hour downtime.

January 21st:
  - Changed quota values. Quotas are not set in stone, I might change them later:
    - Turbo - 16 million
    - GPT-4 - 6 million
    - GPT-4-Turbo - 16 million
    - Claude - 16 million

- Purged unused or banned tokens, 145 -> 128 active tokens, which brought proxy stats down by about ~20K prompts. If your token was removed but you want to start using it now, write me an email, I'll provide a new one. 

## Stats
!!!Note Token usage has only been tracked since the very end of August.
!!!Note 128 users | 879408 proompts | 4972 IPs | 4.007b tokens
User||Prompts|IPs|Usage
---|---|---|---|---
1.  Anonymous | ...b1534 | 59200 proompts | 641 IPs  | 422.44m  tokens     
2.  ~~Anonymous~~ | ...05aa5 | 38125 proompts | 79 IPs   | 168.27m  tokens     
3.  Anonymous | ...8fedf | 32856 proompts | 3 IPs    | 149.70m  tokens     
4.  Anonymous | ...cac1d | 24691 proompts | 172 IPs  | 87.44m  tokens      
5.  Anonymous | ...1ee59 | 23355 proompts | 2 IPs    | 197.34m  tokens     
6.  Anonymous | ...8ae54 | 19250 proompts | 124 IPs  | 65.95m  tokens      
7.  Anonymous | ...adc31 | 19236 proompts | 4 IPs    | 81.17m  tokens      
8.  Anonymous | ...5b911 | 17885 proompts | 40 IPs   | 42.67m  tokens      
9.  Anonymous | ...3ebee | 17631 proompts | 13 IPs   | 158.72m  tokens     
10. Anonymous | ...c18e7 | 17153 proompts | 123 IPs  | 50.30m  tokens       
11. Anonymous | ...5ff1f | 15744 proompts | 21 IPs   | 33.03m  tokens       
12. Anonymous | ...a12ff | 15638 proompts | 16 IPs   | 65.31m  tokens      
13. Anonymous | ...f9e4f | 15320 proompts | 38 IPs   | 37.67m  tokens       
14. Anonymous | ...dc190 | 15012 proompts | 240 IPs  | 26.69m  tokens       
15. Anonymous | ...23ad5 | 14933 proompts | 97 IPs   | 126.57m  tokens     
16. Anonymous | ...5c520 | 14083 proompts | 3 IPs    | 37.51m  tokens       
17. Anonymous | ...94936 | 13548 proompts | 2 IPs    | 128.29m  tokens     
18. Anonymous | ...baebf | 13332 proompts | 47 IPs   | 74.63m  tokens      
19. Anonymous | ...5d907 | 13213 proompts | 13 IPs   | 73.66m  tokens      
20. Anonymous | ...4e677 | 12995 proompts | 4 IPs    | 36.54m  tokens       
21. Anonymous | ...a5023 | 12977 proompts | 4 IPs    | 38.32m  tokens       
22. Anonymous | ...df4de | 12209 proompts | 14 IPs   | 17.77m  tokens       
23. Anonymous | ...7f5fa | 12149 proompts | 6 IPs    | 43.34m  tokens       
24. Anonymous | ...bb610 | 12015 proompts | 28 IPs   | 52.53m  tokens       
25. ~~Anonymous~~ | ...4a07b | 12005 proompts | 83 IPs   | 45.50m  tokens       
26. Anonymous | ...b0a9f | 11934 proompts | 4 IPs    | 25.35m  tokens       
27. Anonymous | ...fc848 | 11928 proompts | 108 IPs  | 106.73m  tokens      
28. Anonymous | ...a4ee7 | 11868 proompts | 15 IPs   | 40.74m  tokens      
29. Anonymous | ...7038b | 10458 proompts | 15 IPs   | 45.21m  tokens       
30. Anonymous | ...f107a | 10316 proompts | 4 IPs    | 47.37m  tokens       
31. Anonymous | ...1383d | 10311 proompts | 46 IPs   | 37.91m  tokens       
32. Anonymous | ...20f3e | 10287 proompts | 7 IPs    | 42.23m  tokens       
33. Anonymous | ...67dc1 | 10101 proompts | 850 IPs  | 32.13m  tokens       
34. Anonymous | ...54ef9 | 9961 proompts  | 1 IPs    | 21.90m  tokens       
35. Anonymous | ...940e1 | 9936 proompts  | 24 IPs   | 72.85m  tokens       
36. Anonymous | ...175d8 | 9802 proompts  | 22 IPs   | 17.01m  tokens       
37. Anonymous | ...85233 | 9760 proompts  | 31 IPs   | 52.66m  tokens       
38. Anonymous | ...9a0bb | 9685 proompts  | 73 IPs   | 26.42m  tokens       
39. Anonymous | ...e1d32 | 9611 proompts  | 11 IPs   | 45.99m  tokens       
40. Anonymous | ...392db | 9278 proompts  | 93 IPs   | 16.92m  tokens       
41. Anonymous | ...0c763 | 9054 proompts  | 115 IPs  | 53.30m  tokens       
42. Anonymous | ...5decf | 8216 proompts  | 6 IPs    | 16.43m  tokens       
43. Anonymous | ...bedea | 7889 proompts  | 113 IPs  | 32.52m  tokens       
44. Anonymous | ...70daf | 7613 proompts  | 52 IPs   | 64.37m  tokens      
45. Anonymous | ...e81d3 | 7581 proompts  | 27 IPs   | 46.09m  tokens       
46. Anonymous | ...b0015 | 7484 proompts  | 1 IPs    | 78.82m  tokens      
47. Anonymous | ...67da8 | 7282 proompts  | 1 IPs    | 50.36m  tokens       
48. Anonymous | ...5f977 | 7201 proompts  | 55 IPs   | 14.46m  tokens       
49. Anonymous | ...266f5 | 7101 proompts  | 2 IPs    | 46.31m  tokens       
50. Anonymous | ...0d879 | 6918 proompts  | 3 IPs    | 98.73m  tokens      
51. Anonymous | ...8af14 | 6349 proompts  | 31 IPs   | 22.60m  tokens       
52. Anonymous | ...67358 | 6083 proompts  | 119 IPs  | 8.91m  tokens         
53. Anonymous | ...b0559 | 6035 proompts  | 89 IPs   | 28.20m  tokens       
54. Anonymous | ...3e48a | 6034 proompts  | 12 IPs   | 11.67m  tokens       
55. Anonymous | ...50189 | 5941 proompts  | 16 IPs   | 13.83m  tokens       
56. Anonymous | ...93327 | 5898 proompts  | 1 IPs    | 3.01m  tokens         
57. Anonymous | ...e982c | 5649 proompts  | 16 IPs   | 29.46m  tokens       
58. Anonymous | ...defb4 | 5284 proompts  | 7 IPs    | 2.38m  tokens         
59. Anonymous | ...b7aef | 5264 proompts  | 27 IPs   | 24.44m  tokens       
60. Anonymous | ...53367 | 5249 proompts  | 2 IPs    | 605.9k  tokens        
61. Anonymous | ...2074d | 4834 proompts  | 24 IPs   | 25.20m  tokens       
62. Anonymous | ...582ea | 4546 proompts  | 83 IPs   | 23.29m  tokens       
63. Anonymous | ...6366c | 4367 proompts  | 78 IPs   | 18.98m  tokens       
64. Anonymous | ...1784c | 4295 proompts  | 68 IPs   | 11.13m  tokens       
65. Anonymous | ...e22cf | 3955 proompts  | 17 IPs   | 9.94m  tokens        
66. Anonymous | ...9222c | 3952 proompts  | 41 IPs   | 15.12m  tokens       
67. Anonymous | ...f914f | 3869 proompts  | 2 IPs    | 19.32m  tokens       
68. Anonymous | ...c9420 | 3468 proompts  | 35 IPs   | 17.87m  tokens       
69. Anonymous | ...35c04 | 3326 proompts  | 9 IPs    | 13.21m  tokens       
70. Anonymous | ...bca8f | 3214 proompts  | 48 IPs   | 12.46m  tokens       
71. Anonymous | ...a2221 | 3175 proompts  | 4 IPs    | 1.19m  tokens         
72. Anonymous | ...a5230 | 3070 proompts  | 22 IPs   | 1.08m  tokens         
73. Anonymous | ...1fdb7 | 2824 proompts  | 37 IPs   | 34.33m  tokens       
74. Anonymous | ...a49fd | 2675 proompts  | 9 IPs    | 12.78m  tokens       
75. Anonymous | ...ddec2 | 2596 proompts  | 38 IPs   | 12.36m  tokens       
76. Anonymous | ...fc858 | 2589 proompts  | 9 IPs    | 5.94m  tokens        
77. Anonymous | ...f9b54 | 2569 proompts  | 5 IPs    | 18.09m  tokens       
78. Anonymous | ...c5171 | 2496 proompts  | 12 IPs   | 21.08m  tokens       
79. Anonymous | ...6bda3 | 2447 proompts  | 3 IPs    | 1.60m  tokens         
80. Anonymous | ...ce56a | 2335 proompts  | 24 IPs   | 22.67m  tokens       
81. Anonymous | ...498a2 | 2315 proompts  | 3 IPs    | 2.63m  tokens         
82. Anonymous | ...522ac | 2242 proompts  | 37 IPs   | 5.64m  tokens        
83. Anonymous | ...eaeee | 2148 proompts  | 2 IPs    | 6.98m  tokens        
84. Anonymous | ...de6ed | 2128 proompts  | 31 IPs   | 15.24m  tokens       
85. Anonymous | ...f57d4 | 2115 proompts  | 5 IPs    | 7.10m  tokens        
86. Anonymous | ...f25e3 | 2043 proompts  | 23 IPs   | 6.52m  tokens        
87. Anonymous | ...5cf36 | 1970 proompts  | 2 IPs    | 7.31m  tokens        
88. Anonymous | ...f84ef | 1933 proompts  | 3 IPs    | 5.31m  tokens         
89. Anonymous | ...66407 | 1904 proompts  | 5 IPs    | 8.56m  tokens        
90. Anonymous | ...c521f | 1873 proompts  | 13 IPs   | 4.78m  tokens        
91. Anonymous | ...3995b | 1806 proompts  | 86 IPs   | 8.44m  tokens        
92. Anonymous | ...c15c5 | 1793 proompts  | 116 IPs  | 4.91m  tokens         
93. Anonymous | ...e2083 | 1643 proompts  | 1 IPs    | 9.21m  tokens        
94. Anonymous | ...44638 | 1397 proompts  | 1 IPs    | 3.85m  tokens         
95. Anonymous | ...64225 | 1382 proompts  | 1 IPs    | 8.87m  tokens        
96. Anonymous | ...f3544 | 1338 proompts  | 17 IPs   | 828.2k  tokens        
97. Anonymous | ...1ac40 | 1329 proompts  | 1 IPs    | 2.63m  tokens         
98. Anonymous | ...df832 | 1327 proompts  | 27 IPs   | 6.92m  tokens         
99. Anonymous | ...8139d | 1297 proompts  | 22 IPs   | 0  tokens              
100.Anonymous | ...33838 | 1276 proompts  | 1 IPs    | 0  tokens              
101.Anonymous | ...931a2 | 1250 proompts  | 1 IPs    | 182.9k  tokens         
102.Anonymous | ...95f98 | 1216 proompts  | 1 IPs    | 11.28m  tokens       
103.Anonymous | ...426e2 | 1110 proompts  | 11 IPs   | 8.47m  tokens        
104.Anonymous | ...c89d3 | 1063 proompts  | 11 IPs   | 2.29m  tokens         
105.Anonymous | ...211af | 1045 proompts  | 19 IPs   | 2.71m  tokens         
106.Anonymous | ...d8563 | 930 proompts   | 60 IPs   | 2.84m  tokens         
107.Anonymous | ...50251 | 916 proompts   | 1 IPs    | 0  tokens              
108.Anonymous | ...90043 | 874 proompts   | 3 IPs    | 6.19m  tokens         
109.Anonymous | ...bbed5 | 865 proompts   | 6 IPs    | 3.40m  tokens         
110.Anonymous | ...7ff09 | 823 proompts   | 3 IPs    | 5.62m  tokens         
111.Anonymous | ...c71b5 | 631 proompts   | 13 IPs   | 3.33m  tokens         
112.Anonymous | ...172be | 474 proompts   | 3 IPs    | 1.61m  tokens         
113.Anonymous | ...a3138 | 396 proompts   | 19 IPs   | 1.43m  tokens         
114.Anonymous | ...b1829 | 350 proompts   | 8 IPs    | 999.6k  tokens        
115.Anonymous | ...fac13 | 283 proompts   | 6 IPs    | 0  tokens              
116.Anonymous | ...5d9e9 | 256 proompts   | 1 IPs    | 1.51m  tokens         
117.Anonymous | ...d8540 | 240 proompts   | 2 IPs    | 492.4k  tokens        
118.Anonymous | ...aa056 | 228 proompts   | 5 IPs    | 1.56m  tokens         
119.Anonymous | ...4d037 | 202 proompts   | 1 IPs    | 290.5k  tokens         
120.Anonymous | ...6a20f | 177 proompts   | 3 IPs    | 0  tokens              
121.Anonymous | ...78cc9 | 86 proompts    | 1 IPs    | 0  tokens              
122.Anonymous | ...62115 | 77 proompts    | 3 IPs    | 278.6k  tokens         
123.Anonymous | ...c3dd1 | 40 proompts    | 3 IPs    | 100.5k  tokens         
124.Anonymous | ...70470 | 34 proompts    | 1 IPs    | 135.0k  tokens         
125.Anonymous | ...c859b | 26 proompts    | 1 IPs    | 0  tokens              
126.Anonymous | ...bfa8e | 21 proompts    | 2 IPs    | 69.5k  tokens          
127.Anonymous | ...29ff4 | 12 proompts    | 2 IPs    | 8.8k  tokens           
128.Anonymous | ...97040 | 6 proompts     | 1 IPs    | 102  tokens            

-> *(as of 2024-03-08T16:51:00.777Z)* <-